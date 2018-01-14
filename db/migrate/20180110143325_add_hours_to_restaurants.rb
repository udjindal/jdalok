class AddHoursToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :hours, :string
  end
end
