class Api::ConversationsController < ApplicationController

  before_action :require_logged_in

  def index
    page_number = params[:page].try(:to_i) || 0
    @offset = page_number * 50;

    @conversations = current_user.conversations.all
      .limit(50).offset(@offset).includes(:messages)

    @num_con = current_user.conversations.all.count

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

  private

  def conversation_params
    params.require(:conversation).permit(:title, :important, :starred);
  end

end
