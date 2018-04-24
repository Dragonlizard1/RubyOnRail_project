class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # ...
  # def current_user
  #   User.find(session[:user_id]) if session[:user_id]
  # end
  # helper_method :current_user
  before_action :require_login

  private

  def require_login
      if not session[:id]
      	redirect_to "/sessions/new"
      end
  end

    def usercheck
    if not (session[:id] == params[:id])
      redirect_to "/sessions/new"
    end
  end
end
