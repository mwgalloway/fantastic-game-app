class SessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user && @user.authenticate(params[:password])
      flash[:alert] = "Welcome #{@user.username}!"
      session[:user_id] = @user.id
      redirect_to '/'
    else
      flash[:error] = "Username and/or password don't match"
      render 'new'
    end
  end

  def destroy
    flash[:alert] = "You've successfully logged out"
    session[:user_id] = nil
    redirect_to '/games'
  end
end
