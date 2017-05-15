class CorridorsController < ActionController::Base

  def index
    @corridors = Corridor.all
  end

  def show
    @corridor = Corridor.find(params[:id])
  end

  def new
    @corridor : Corridor.new
  end

  def create

  end

end
