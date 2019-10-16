class AddLocationToRestaurants < ActiveRecord::Migration[6.0]
  def change
     add_column :restaurants, :location, :string, array: true, default: []
  end
end
