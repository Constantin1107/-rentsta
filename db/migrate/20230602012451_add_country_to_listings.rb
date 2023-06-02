class AddCountryToListings < ActiveRecord::Migration[7.0]
  def change
    add_column :listings, :country, :string
  end
end
