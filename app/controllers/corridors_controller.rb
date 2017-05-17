class CorridorsController < ApplicationController

  def index
    @corridors = Corridor.all
    # @corridors = Corridor.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@corridors) do |corridor, marker|
      marker.lat corridor.latitude
      marker.lng corridor.longitude
      # marker.infowindow render_to_string(partial: "/corridors/map_box", locals: { corridor: corridor })
    end
  end

  def show
    @corridor = Corridor.find(params[:id])
    @alert_message = "Cheminade allows you to see the #{@corridor.name}"
    # @corridor_coordinates = { lat: @corridor.latitude, lng: @corridor.longitude }
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
