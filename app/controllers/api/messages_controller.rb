class Api::MessagesController < ApplicationController

  before_action :require_logged_in_api

  def create
    @conversation = Conversation.find(params[:conversation_id])

    if @conversation
      @message = @conversation.messages.new(message_params)

      if @message.save
        render :show
      else
        render json: @message.errors.full_messages
      end

    else

    end
  end

  def destroy

  end

end
