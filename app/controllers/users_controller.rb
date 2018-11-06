class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    authorize @user

    @spaces = Space.where(user_id: params[:id])
  end

  def dashboard
    if user_signed_in?
      @user = User.find(current_user.id)
      authorize @user
      @spaces = Space.where(user_id: current_user)
    else
      redirect_to new_user_session_path
    end
  end
end
