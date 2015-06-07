class SessionsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    user = User.from_omniauth(auth_hash)
    if user.tradegecko_admin?
      session[:user] = user.as_json
      redirect_to root_url
    else
      redirect_to "https://tradegecko.com"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end

  def auth_hash
    env["omniauth.auth"]
  end
end
