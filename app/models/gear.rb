class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def available_slots(date)
    booked_slots = bookings.where(start_time: date.beginning_of_day..date.end_of_day).pluck(:start_time)
    all_slots = (9..17).map { |hour| date.to_time.change(hour: hour) }
    all_slots - booked_slots
  end
end
