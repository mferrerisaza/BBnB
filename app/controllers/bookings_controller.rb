class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @boat = Boat.find(params[:boat_id])
    @booking.boat = @boat
    authorize @boat
    if @booking.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :description)
  end
end
