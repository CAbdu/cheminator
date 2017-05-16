class CorridorsController < ApplicationController

  def index
    @corridors = Corridor.where(city: params[:search])
  end

  def show
    @corridor = Corridor.find(params[:id])
  end

  def new
    @corridor = Corridor.new
  end

  def create
    @corridor = Corridor.new(corridor_params)
    @corridor.save
    redirect_to corridor(@corridor)
  end

  private

  def corridor_params
    params.require(:corridor).permit(:address)
  end

end
