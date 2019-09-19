class UsersController < ApplicationController
  skip_before_action :auth, only: [:new, :create]

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.find_or_create_by(user_params)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
