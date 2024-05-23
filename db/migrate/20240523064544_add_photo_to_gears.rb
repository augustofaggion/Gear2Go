class AddPhotoToGears < ActiveRecord::Migration[7.1]
  def change
    add_column :gears, :photo, :string
  end
end
