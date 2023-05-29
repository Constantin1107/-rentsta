class CreateListings < ActiveRecord::Migration[7.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.string :address
      t.integer :owner_id
      t.integer :price
      t.string :description
      t.integer :capacity
      t.timestamps
    end
  end
end
