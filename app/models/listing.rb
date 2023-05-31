class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :name, :address, :user_id, :price, :description, :capacity, :photo, presence: true
end
