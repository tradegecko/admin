class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def authenticate_user!
    redirect_to "/auth/tradegecko" unless user_signed_in?
  end

  def user_signed_in?
    session[:user]
  end
end
