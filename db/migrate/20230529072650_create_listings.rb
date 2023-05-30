class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :description
      t.integer :capacity
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
