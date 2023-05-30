class BookingsController < ApplicationController
  before_action :set_listing, only: %i[new create edit]

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.listing_id = @listing.id
    @booking.save
    redirect_to confirmation_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:active] == 'false'
      @booking.active = params[:active]
      @booking.save
    else
      @booking.update(booking_params)
    end
    redirect_to listing_bookings_path(2)
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :listing_id, :booking_date, :active)
  end
end
