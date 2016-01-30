class Api::SessionsController < ApplicationController

  def find_user
    @user = User.find_by_username(params[:username])

    if @user
      render 'api/users/show_part'
    else
      render json: ["No Such User"], status: 400
    end
  end

  def create
    @user = User.find_by_credentials(
      params[:username],
      params[:pass]
    )

    if @user
      log_in(@user)
      render "api/users/show"
    else
      render json: ["Incorrect Password."], status: 400
    end
  end

  def destroy
    log_out

    render json: ["Logged Out"]
  end

end
