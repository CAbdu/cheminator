class CorridorsController < ActionController::Base

  def index
    @corridors = Corridor.all
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
    params.require(:corridor).permit(:adress)
  end

end
