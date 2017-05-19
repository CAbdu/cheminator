class CorridorsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_session, only: [:index]

  def index

    @corridors = Corridor.all

    if session[:address].present?
      @corridors = @corridors.near(session[:address], 10)
    end

    @corridors = @corridors.where.not(latitude: nil, longitude: nil)

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

    @address = session[:address]
    @date = session[:date]
  end

  def show
    @date = session[:date]
    @corridor = Corridor.find(params[:id])
    @booking = Booking.new
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

  def set_session
    session[:address] = params[:search][:address] if params[:search].present?
    session[:date] = params[:search][:date] if params[:search].present?
  end

  def corridor_params
    params.require(:corridor).permit(:address)
  end

end
