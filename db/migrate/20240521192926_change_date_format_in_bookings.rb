class ChangeDateFormatInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column :bookings, :start_time, :datetime
  end
end
