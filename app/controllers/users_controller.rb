class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spaces = Space.where(user_id: params[:id])

  end

  def dashboard

   if user_signed_in?
    @user = User.find(current_user.id)
    @spaces = Space.where(user_id: current_user.id)


    # @user =User.find(params[:id])
    # @spaces = Space.where(user_id:params[:id])
  else
    redirect_to new_user_session_path
  end
end
end
