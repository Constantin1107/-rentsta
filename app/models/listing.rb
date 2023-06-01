class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos
  validates :name, :address, :user_id, :price, :description, :capacity, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_address,
    against: [:name, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
