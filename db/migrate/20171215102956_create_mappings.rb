class CreateMappings < ActiveRecord::Migration
  def change
    create_table :mappings do |t|
    t.integer :restaurant_id
    t.integer :listedin_id
      t.timestamps null: false
    end
  end
end
