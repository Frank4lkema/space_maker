class UsersController < ApplicationController
skip_before_action :authenticate_user!, only: [:show]
  def show
    @user = User.find(params[:id])
    authorize @user

    @spaces = Space.where(user_id: @user)
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    @user = User.find(params[:id])
    authorize @user
    if @user.update(user_params)
      redirect_to dashboard_path
    else
      render :edit
    end
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

  private

  def user_params
    params.require(:user).permit(:name, :email, :phone_number, :about, :avatar)
  end
end
