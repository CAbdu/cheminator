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
    @planet = Planet.new(planet_params)
    @planet.save
    redirect_to planet(@planet)
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :temperature, :distance, :environment, :population, :language, :sociability, :sexual_compatibility)
  end

end

