class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @spaces = policy_scope(Space.where.not(latitude: nil, longitude: nil))

    @markers = @spaces.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end

  def show
    @space = Space.find(params[:id])
    authorize @space

    @booking = Booking.new
    @booking.end_date = 30.days.from_now # Just here for presentation
    @booking.rent = 5 # just here for presentation
  end

  def new
    @space = Space.new()

    # everything below here is for presetation
    @space.name = "Franks Garage"
    @space.capacity = 12
    @space.price = 200
    @space.description = "A very clean garage in Utrecht "
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
    # raise
    if @space.update(space_params)
      params[:pictures]['photo'].each do |a|
        @picture= @space.pictures.create!(:photo => a)
      end
      (redirect_to space_path(@space))

    else
      (render :edit)
    end
  end

  def destroy

    @space = Space.find(params[:id])
    authorize @space
    @space.destroy
  end

  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :capacity, :description , pictures_attributes: [:id,:space_id,:photo])
  end
end
