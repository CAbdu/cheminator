class CorridorsController < ApplicationController
  skip_before_action :authenticate_user!

  def define_address
    session[:address] = params[:search][:address]
    redirect_to corridors_path
  end

  def index
    if session[:address] != ""
      @corridors = Corridor.near(session[:address], 10)
    else
      @corridors = Corridor.where.not(latitude: nil, longitude: nil)
    end

    @hash = Gmaps4rails.build_markers(@corridors) do |corridor, marker|
      marker.lat corridor.latitude
      marker.lng corridor.longitude
      marker.picture({
        url: "http://www.iconsdb.com/icons/preview/icon-sets/web-2-red/planet-xl.png",
        width: 64,
        height: 64
      })
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
