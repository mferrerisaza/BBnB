class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to dashboard_path
    else
      render 'new'
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
   @boat = Boat.find(params[:id])
    @boat.update(boat_params)
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
