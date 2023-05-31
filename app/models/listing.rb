class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :name, :address, :user_id, :price, :description, :capacity, presence: true
end
