class NotesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @user.notes.create(notes_params)
    redirect_to user_path(@user)
  end

  private

  def notes_params
    params.require(:note).permit(:text, :cat)
  end
end
