class CreateListedins < ActiveRecord::Migration
  def change
    create_table :listedins do |t|
        t.string :listedin_category
      t.timestamps null: false
    end
  end
end
