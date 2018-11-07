class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @spaces = policy_scope(Space)

  end

  def show
    @space = Space.find(params[:id])
    authorize @space

    @booking = Booking.new
  end

  def new
    @space = Space.new()
    @pictures= @space.pictures.build

    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    if @space.save
      params[:pictures]['photo'].each do |a|
        @picture= @space.pictures.create!(:photo => a)
      end
      (redirect_to space_path(@space))
    else
      (render :new)
    end
  end

  def edit
    @space = Space.find(params[:id])
    authorize @space
    @pictures = @space.pictures
  end

  def update
    @space = Space.find(params[:id])
    authorize @space
    if @space.update(space_params)
      if params[:pictures].nil?
        redirect_to space_path(@space)
      else
        params[:pictures]['photo'].each_with_index do |a,i|
          @picture= @space.pictures[i].update(:photo => a)
        end
        (redirect_to space_path(@space))
      end
    else
      (render :edit)
    end
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :capacity , pictures_attributes: [:id,:space_id,:photo])
  end
end
