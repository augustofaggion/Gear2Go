class RemoveEndTimeFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :end_time
  end
end
