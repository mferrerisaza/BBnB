class BoatsController < ApplicationController

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @boat = current_user.boat
  end

  def update
    @boat = current_user.boat
    boat.update(boat_params)
    redirect_to root_path
  end

  private

  def boat_params
    params.require(:boat).permit(:make, :year, :model, :capacity,:location, :boat_type, :price, :photo)
  end
end
