class BookingsController < ActionController::Base

  def index
    @corridor = Corridor.find(params[:corridor_id])
    @booking = Booking.new
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
  end

end
