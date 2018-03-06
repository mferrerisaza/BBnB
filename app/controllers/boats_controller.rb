class BoatsController < ApplicationController

def new
  @boat = Boat.new
end

def create
  @boat = Boat.new
  if @boat.save
    redirect_to root_path
  else
    render 'new'
  end
end


def boat_params
  params.require(:boats).permit(:make, :year, :model, :capacity,:location, :boat_type, :price)
end
end
