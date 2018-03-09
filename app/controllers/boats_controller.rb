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
    @boats = filter_boats_by_name_and_dates
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
    params.require(:boat).permit(:make, :year, :model, :capacity, :location, :boat_type, :price, :photo)
  end

  def filter_boats_by_name_and_dates
    named = params[:query]
    starts = params[:start_date]
    ends = params[:start_date]

    if named.present? && starts.blank? && ends.blank?
      Boat.search_by_attributes(named)
    elsif named.present? && starts.present? && ends.present?
      sql = "(bookings.start_date, bookings.end_date) OVERLAPS (:start, :end)"
      unavailable = Boat.search_by_attributes(named)
                        .joins(:bookings)
                        .where(sql, start: starts, end: ends)
      unavailable_ids = unavailable.pluck(:id)
      Boat.search_by_attributes(named).where.not(id: unavailable_ids)
    elsif named.blank? && starts.present? && ends.present?
      unavailable = Boat.joins(:bookings)
                        .where(sql, start: starts, end: ends)
      unavailable_ids = unavailable.pluck(:id)
      Boat.where.not(id: unavailable_ids)
    else
      Boat.all
    end
  end
end
