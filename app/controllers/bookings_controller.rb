class BookingsController < ApplicationController

 def index
  @bookings = current_user.bookings
 end

 def show
   @booking = Booking.find(params[:id])
 end

 def new
   @booking = Booking.new
 end

 def create
   @corridor = Corridor.find(params[:corridor_id])
   @planet = @corridor.planet
   @booking = current_user.bookings.new(booking_params)
   @booking.planet = @planet

   if @booking.save
    redirect_to bookings_path
  else
    render "corridors/show"
  end
 end

 private

 def booking_params
   params.require(:booking).permit(:date)
 end
end
