class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @boats = policy_scope(Boat).where.not(latitude: nil, longitude: nil)
    @markers = @boats.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude
      }
    end
  end

  def show
    @boat = Boat.find(params[:id])
    @booking = Booking.new
    authorize @boat

  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    authorize @boat
    if @boat.save
      redirect_to boat_path(@boat)
    else
      render 'new'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
    authorize @boat
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    authorize @boat
    redirect_to boat_path(@boat)
  end

  def destroy
  # fetch boat to destroy from DB
    @boat = Boat.find(params[:id])

    authorize @boat

    # destroy record
    @boat.destroy
    flash[:notice] = "Successfully deleted"

    # redirect to index
    redirect_to dashboard_path
  end
  private

  def boat_params
    params.require(:boat).permit(:make, :year, :model, :capacity,:location, :boat_type, :price, :photo)
  end
end
