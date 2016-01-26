class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by_username(params[:username])

    if @user && @user.is_pass?(params[:pass])
      log_in(@user)
      redirect_to :root
    else
      flash.now[:errors] = ["Username and password unknown"]
    end

  end

  def destroy
    log_out

    render :new
  end

end
