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

  def update
    @booking = Booking.find(params[:id])
    @booking.status = bookings_params[:status]
    authorize @booking.boat
    if @booking.save
      respond_to do |format|
        format.html {redirect_to dashboard_path}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'dashboard/show'}
        format.js
      end
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :description, :status)
  end
end
