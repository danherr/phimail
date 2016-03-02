class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in?

  def current_user
    the_session = Session.find_by_session_token(session[:session_token])

    if session
      the_session.user
    end
  end

  def logged_in?
    !!current_user
  end

  def log_in(user)
    session[:session_token] = Session.new_session!(user)
  end

  def log_out
    Session.end_session!(session[:session_token]) if logged_in?
    
    session[:session_token] = nil
  end

  def require_logged_in
    render nothing: true, status: 401 unless logged_in?
  end

  private

  def message_params
    params.require(:message).permit(:target_address, :body)
  end

  def conversation_params
    params.require(:conversation).permit(:title, :important, :starred, :read);
  end

end
