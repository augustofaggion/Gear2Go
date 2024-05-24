class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  # Calculates the available booking slots for a given date
  # Assumes that all gear is bookable from 9am to 5pm.
  def available_slots_for_day(date)
    booked_slots = bookings.where(start_time: date.beginning_of_day..date.end_of_day).pluck(:start_time)
    all_slots = (9..17).map { |hour| date.to_time.change(hour: hour) }
    all_slots - booked_slots
  end

  # Returns the next n days with available slots.
  def next_n_days_with_slots(n)
    (0..n-1).map do |i|
      date = Date.today + i.days
      available_slots = self.available_slots_for_day(date)
      { date: date, slots: available_slots }
    end
  end
end
