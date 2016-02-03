class Api::MessagesController < ApplicationController

  before_action :require_logged_in

  def show
    @message = current_user.messages.find(params[:id])
  end

  def reply

    @conversation = Conversation.find(params[:conversation_id])

    if @conversation
      @message = @conversation.messages.new(message_params)

      if @message.save
        render :show
      else
        render json: @message.errors.full_messages
      end

    else

      render json: ["No Conversation With Id #{params[:id]}"]

    end

  end

  def update_draft
    @conversation = current_user.conversations.find(params[:conversation_id])
    @message = @conversation.messages.fund(params[:id])
    if @conversation && @conversation.update(conversation_params) && @message && @message.update(message_params)
      @message.send if params[:send]

      render :show
    else
      render nothing: true, status: 400
    end
  end

  def update_reply
    @message = current_user.messages.find(params[:id])
    if @message
      if @message.update(message_params)
        @message.send if params[:send]

        render :show
      else
        render json: @message.errors.full_messages
      end
    else
      render json: ["No Message With Id #{params[:id]}"]
    end
  end

end
