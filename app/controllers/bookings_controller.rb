class BookingsController < ApplicationController

 def index
  @corridor = Corridor.find(params[:corridor_id])
  @bookings = Booking.all
 end

 def show
   @booking = Booking.find(params[:id])
 end

 def new
   @booking = Booking.new
 end

 def create
   @user = current_user
   @corridor = Corridor.find(params[:corridor_id])
   @planet = @corridor.planet
   @booking = Booking.new(user: @user, planet: @planet )

   @booking.save
   redirect_to corridor_bookings_path(@corridor)
 end

 private

 def booking_params
   params.require(:booking).permit(:planet_id, :user_id)
 end
end
