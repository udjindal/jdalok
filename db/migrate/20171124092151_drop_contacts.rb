class DropContacts < ActiveRecord::Migration
  def change
      drop_table :contacts
      drop_table :restaurants
      drop_table :listedins
  end
end
