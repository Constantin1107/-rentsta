class BookingsController < ApplicationController
  before_action :set_listing, only: %i[new create]
  before_action :set_booking, only: %i[accept reject]

  def index
    @bookings = Booking.where(user_id: current_user.id)
    flash.now[:notice] = 'Booking accepted' if params[:accepted]
    flash.now[:notice] = 'Booking rejected' if params[:rejected]
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = current_user.id
    @booking.listing_id = @listing.id
    @booking.save
    redirect_to confirmation_path(listing_id: @listing.id)
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
    redirect_to bookings_path
  end

  # PATCH /bookings/:id/accept
  # @TODO authorize that the user should actually be allowed the booking
  def accept
    if @booking.accepted!
      redirect_to @booking, notice: 'Booking accepted'
    else
      redirect_to @booking, notice: 'Booking could not be accepted - please try again'
    end
  end

  # PATCH /bookings/:id/reject
  # @TODO authorize that the user should actually be reject the booking
  def reject
    if @booking.rejected!
      redirect_to @booking, notice: 'Booking rejected'
    else
      redirect_to @booking, notice: 'Booking could not be rejected - please try again'
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:user_id, :listing_id, :booking_date, :active)
  end
end
