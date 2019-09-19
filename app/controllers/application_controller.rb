class ApplicationController < ActionController::Base
  before_action :auth

  private

  def auth
    unless session.include? :user_id
      return redirect_to login_path
    end

    unless session[:user_id] == params[:id].to_i || session[:user_id] == params[:user_id].to_i
      return redirect_to user_path(session[:user_id])
    end
  end
end
