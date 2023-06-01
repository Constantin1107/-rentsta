class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def confirmation
    @booking = current_user.bookings.last
  end

  def my_listings
    @listings = Listing.where(user_id: current_user.id)
  end

  def incoming_booking_requests
    @bookings = Booking.for(current_user)
  end

  def outgoing_booking_requests
    @bookings = Booking.where(user_id: current_user.id)
  end
end
