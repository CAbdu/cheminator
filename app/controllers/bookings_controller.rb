class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @corridor = Corridor.find(params[:corridor_id])
    @booking = Booking.new

    @booking.save
    redirect_to corridor_path(@corridor)
  end

  private

  def booking_params
    params.require(:booking).permit(:rating, :review)
  end
end
