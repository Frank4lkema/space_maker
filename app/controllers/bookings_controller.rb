class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.save ? (redirect_to dashboard_path):(render space_path(params[:id]))
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :message, :space_id)
  end
end
