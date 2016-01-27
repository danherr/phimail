class Api::ConversationsController < ApplicationController

  before_action :require_logged_in_api

  def index
    num = 30
    offset = -1

    @conversations = current_user.conversations.all.includes(:messages).limit(num).offset(offset)
  end

  def create

  end

  def show
    @conversation = current_user.conversations.find(params[:id]).includes(:messages)
  end

end
