class RemoveLocationFromRestaurant < ActiveRecord::Migration[6.0]
  def change
    remove_column :restaurants, :location
  end
end
