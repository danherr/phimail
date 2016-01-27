class Api::UsersController < ApplicationController

  before_action :require_logged_in_api

  def show
    @user = current_user
  end

  def update
    @user = currend_user

    if @user.update(user_params)
      render :show
    else
      render json: @message.errors.full_messages, status: 400;    
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :username, :birthday, :phone_number, :outside_email, :avater_url, :pass)
  end

end
