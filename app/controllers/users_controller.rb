class UsersController < ApplicationController
  def index
    if session[:login]
      log_out
    else
    end
  end

  def log_in
    user = User.find_by(email: params["email"])
    if user.authenticate(params["password"])
      redirect_to root_path
      session[:login] = true
      flash[:notice] = "Login"
    else
      redirect_to users_path
      session[:login] = false
      flash[:error] = "No login"
    end
  end

  def log_out
    redirect_to root_path
    session[:login] = false
    flash[:error] = "Logout"
  end
end
