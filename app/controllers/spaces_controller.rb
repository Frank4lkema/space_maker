class SpacesController < ApplicationController

  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])

  end

  def new
    @space = Space.new()
    @pictures= @space.pictures.build
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
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
    @pictures = @space.pictures
  end

  def update
    @space = Space.find(params[:id])
    if @space.update(space_params)
      params[:pictures]['photo'].each_with_index do |a,i|
        @picture= @space.pictures[i].update(:photo => a)
      end
      (redirect_to space_path(@space))
    else
      (render :edit)
    end
  end




  private

  def space_params
    params.require(:space).permit(:name, :address, :price, :capacity , pictures_attributes: [:id,:space_id,:photo])
  end
end
