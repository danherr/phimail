class Api::MessagesController < ApplicationController

  before_action :require_logged_in

  def show
    @message = current_user.messages.find(params[:id])
  end

  def reply
    @conversation = Conversation.find(params[:conversation_id])

    if @conversation

      if params[:mode] == 'all'
        @conversation.make_reply_all(params[:id])
      else
        @conversation.make_reply(params[:id])
      end

      @messages = @conversation.messages

      render '/api/conversations/show'
    else
      render json: ["No Conversation With Id #{params[:id]}"]
    end
  end

  def update_draft
    @conversation = current_user.conversations.find(params[:conversation_id])
    @message = @conversation.messages.find(params[:id])
    if @conversation && @conversation.update(conversation_params) && @message && @message.update(message_params)
      @message.send_msg if (params[:send] == "true")

      render '/api/shared/draft'
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
