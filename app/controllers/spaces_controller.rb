class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])

  end

  def new
    @space = Space.new()
  end

  def create
    @user = current_user
    @space = Space.new(space_params)
    @space.user = @user


    if @space.save
      redirect_to space_path(@space)
    else
      render :new
    end
  end





  private

  def space_params
    params.require(:space).permit(:name,:address,:price, :capacity)
  end
end
