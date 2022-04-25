class UsersController < ApplicationController
  def index
    if session[:login]
      log_out
    else
    end
  end

  def log_in
    redirect_to root_path
    session[:login] = true
    flash[:notice] = "Login"
  end

  def log_out
    redirect_to users_path
    session[:login] = false
    flash[:error] = "Logout"
  end
end
