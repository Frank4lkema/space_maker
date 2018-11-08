class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.space.capacity -= @booking.rent
    authorize @booking
    @booking.space.save
    @booking.user = current_user
    @booking.save ? (redirect_to dashboard_path):(render space_path(params[:id]))
  end


  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.space.capacity += @booking.rent
    @booking.space.save
    @booking.delete
    redirect_to dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :rent, :space_id)
  end
end
