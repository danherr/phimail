class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if user_params[:pass] != params[:other_pass]
      flash.now[:error] = ["Your passwords didn't match."]
      render :new
    else

      if @user.save
        log_in(@user)
        redirect_to :root
      else
        flash.now[:error] = @user.errors.full_messages
        render :new
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:fname, :lname, :username, :birthday, :phone_number, :outside_email, :avater_url, :pass)
  end

end
