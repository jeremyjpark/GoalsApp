class SessionsController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create
    @user = User.find_by(username: params[:user][:username])

    if @user.nil?
      flash.now[:errors] = ["Username not found"]
      @user = User.new
      render :new
    elsif @user.valid_password?(params[:user][:password])
      login(@user)
      redirect_to goals_url
    else
      flash.now[:errors] = ["Incorrect password"]
      render :new
    end
  end

  def destroy
    current_user.reset_session_token
    session[:session_token] = nil
    redirect_to goals_url
  end

end
