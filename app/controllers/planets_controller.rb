class PlanetsController < ActionController::Base

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet : Planet.new
  end

  def create
  end

end
