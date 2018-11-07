class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @spaces = Space.where(user_id: @user)
  end

  def dashboard

   if user_signed_in?
      @user = User.find(current_user.id)
    else
      redirect_to new_user_session_path
    end
  end
end
