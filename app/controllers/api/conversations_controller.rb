class Api::ConversationsController < ApplicationController

  before_action :require_logged_in

  def index
    @page_number = params[:page].try(:to_i) || 1
    @offset = (@page_number - 1) * 50

    @num_con = current_user.conversations.all.count

    until @num_con > @offset do
      @offset -= 50
      @page_number -= 1
    end

    until @offset >= 0 do
      @offset += 50
      @page_number += 1
    end

    @conversations = current_user.conversations.all
      .limit(50).offset(@offset).includes(:messages)

    render :index;
  end

  def create
    @conversation = current_user.conversation.create(conversation_params)
    @message = [@conversation.messages.new(message_params)]

    if @message.save
      render :show
    else
      @conversation.destroy
      render json: @message.errors.full_messages, status: 400;
    end
  end

  def show
    @conversation = current_user.conversations.find(params[:id])
    @messages = @conversation.messages

    @conversation.update({read: true});

    render :show
  end

  def update
    @conversation = current_user.conversations.find(params[:id])
    if @conversation && @conversation.update(conversation_params)
      @messages = @conversation.messages
      render :show
    else
      render nothing: true, status: 400
    end
  end

  def batch_update
    conversations = current_user.conversations.find(params[:ids])
    conversations.each {|conversation| conversation.update(conversation_params)}

    index
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title, :important, :starred, :read);
  end

end
