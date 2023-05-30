class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, :address, :user_id, :price, :description, :capacity, presence: true
end
