class RenameEmailstreetToStreetInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :emailstreet, :street
  end
end
