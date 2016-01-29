class Api::UsersController < ApplicationController

  before_action :require_logged_in_api, except: [:create]

  def show
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      render :show
    else
      render json: @message.errors.full_messages, status: 400;
    end
  end

  def create
    @user = User.new(user_params)

    if user_params[:pass] != params[:other_pass]
      render json: ["Passwords Disagree"], status: 400;
    else
      if @user.save
        log_in(@user)
        render :show
      else
        render json: @message.errors.full_messages, status: 400;
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :username, :birthday, :phone_number, :outside_email, :avater_url, :pass)
  end

end
