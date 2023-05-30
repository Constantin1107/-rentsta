class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  validates :user_id, :listing_id, :booking_date, presence: true
end
