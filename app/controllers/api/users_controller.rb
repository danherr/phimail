class Api::UsersController < ApplicationController

  before_action :require_logged_in_api

  def show
    @user = current_user
  end

  def update

  end

  def destroy

  end

end
