class RenameUserColumns < ActiveRecord::Migration
  def change
    rename_column :users, :hash, :password_hash
    rename_column :users, :salt, :password_salt


  end
end
