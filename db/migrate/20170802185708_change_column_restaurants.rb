class ChangeColumnRestaurants < ActiveRecord::Migration
  def change
    rename_column :restaurants, :nameurl, :url
  end
end
