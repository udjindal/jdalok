class AddImageurlToRestaurants < ActiveRecord::Migration
  def change
      create_table :restaurants do |t|
        t.string :url
        t.string :address
        t.string :name
        t.string :city
        t.string :image_url
        t.string :hours
        t.timestamps null: false
    end
  end
end
