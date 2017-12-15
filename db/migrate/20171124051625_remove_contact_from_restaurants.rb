class RemoveContactFromRestaurants < ActiveRecord::Migration
  def change
      remove_column :restaurants, :contact_info 
  end
end
