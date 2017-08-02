class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :nameurl
      t.string :address
      t.string :contact_info
      t.string :name
      t.timestamps null: false
    end
  end
end
