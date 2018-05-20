class SessionController < ApplicationController
  def new
  end

  def create
    @user = User.find_by :email =>params[:email]
    if @user.present? && @user.authenticate(params[:password]) && @user.activated
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Invalid username/password or user not activated. Please check your email for activation details."
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end

end
