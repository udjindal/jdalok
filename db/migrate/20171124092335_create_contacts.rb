class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :number
      t.belongs_to :restaurant, index: true
      t.timestamps null: false
    end
  end
end
