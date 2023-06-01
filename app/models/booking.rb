class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :user_id, :listing_id, :booking_date, presence: true
  enum status: {
    pending: 0,
    accepted: 1,
    rejected: 2
  }

  def self.for(user)
    Booking.joins(:listing).where("listings.user_id = ?", user.id)
  end
end
