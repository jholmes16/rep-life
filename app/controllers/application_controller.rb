class ApplicationController < ActionController::Base

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end 

  def logged_in?
    !!current_user #Turns current user varible into a boolean.
  end

end
