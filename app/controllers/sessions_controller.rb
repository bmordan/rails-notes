class SessionsController < ApplicationController
  skip_before_action :auth

  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    
    if @user.nil?
      redirect_to new_user_path
    else
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
