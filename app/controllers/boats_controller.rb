class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @boats = policy_scope(Boat)
  end

  def show
    @boat = Boat.find(params[:id])
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
      redirect_to dashboard_path
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
    redirect_to dashboard_path
  end

  def destroy
  # fetch boat to destroy from DB
    @boat = Boat.find(params[:id])

    authorize @boat

    # destroy record
    @boat.destroy

    # redirect to index
    redirect_to dashboard_path
  end
  private

  def boat_params
    params.require(:boat).permit(:make, :year, :model, :capacity,:location, :boat_type, :price, :photo)
  end
end
