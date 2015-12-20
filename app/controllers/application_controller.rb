class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private

  def current_user
    @profile_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user ||= Profile.find_by_user_id(@profile_user) if @profile_user
    rescue ActiveRecord::RecordNotFound
  end

  def require_login
    unless session[:user_id]
       flash[:error] = "You must be logged in to access this section"
            redirect_to root_path # halts request cycle
     end
   end

end
