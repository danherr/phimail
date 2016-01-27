class Api::ConversationsController < ApplicationController

  before_action :require_logged_in_api

  def index
    num = 30

    @conversations = current_user.conversations.all.includes(:messages).limit(num)
  end

  def create

  end

  def show

    @conversation = current_user.conversations.find(params[:id])
  end

end
