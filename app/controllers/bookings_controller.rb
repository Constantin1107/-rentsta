class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.create(booking_params)
    @booking.save
    redirect_to confirmation_path
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to confirmation_path
  end

  private

  def booking_params
    params.require(:bookings).permit(:user_id, :listing_id, :booking_date)
  end

end
