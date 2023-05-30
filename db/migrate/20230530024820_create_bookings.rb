class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :listing, foreign_key: true
      t.datetime :booking_date
      t.string :active, default: "true"
      t.timestamps
    end
  end
end
