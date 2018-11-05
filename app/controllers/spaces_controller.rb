class SpacesController < ApplicationControllerd
  def show
    @space = Space.find(params[:id])
  end
end
