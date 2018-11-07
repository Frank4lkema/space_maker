class PicturesController < ApplicationController


  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
   if @picture.update(picture_params)
    redirect_to dashboard_path
    else
    render :edit
    end
  end


  def destroy
    @picture = Picture.find(params[:id])
    authorize @picture
    @picture.destroy
    redirect_to  space_edit_path(@picture.space)
  end

  private

  def picture_params
    params.require(:picture).permit(:id, :space_id, :photo)
  end
end
