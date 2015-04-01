class SessionsController < ApplicationController
  skip_before_filter :check_session
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_path, notice: "Signed in!"
    if env["omniauth.auth"]["info"]["image"] != user.image
      user.image = env["omniauth.auth"]["info"]["image"]
      user.save
    end

    if env["omniauth.auth"]["info"]["nickname"] != user.name
      user.name = env["omniauth.auth"]["info"]["nickname"]
      user.save
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Signed out!"
  end
end
