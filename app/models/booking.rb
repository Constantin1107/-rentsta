class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :user_id, :listing_id, :booking_date, presence: true
  validate :date_not_in_past
  enum status: {
    pending: 0,
    accepted: 1,
    rejected: 2
  }

  def date_not_in_past
    return if booking_date >= Date.today

    errors.add(:booking_date, "must in the future")
  end

  def self.for(user)
    Booking.joins(:listing).where("listings.user_id = ?", user.id)
  end
end
