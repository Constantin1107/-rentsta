class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def confirmation
    @booking = current_user.bookings.last
  end
end
