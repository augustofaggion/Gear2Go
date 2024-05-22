class Gear < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  def available_slots(date)
    booked_slots = bookings.where(start_time: date.beginning_of_day..date.end_of_day).pluck(:start_time)
    all_slots = (9..17).map { |hour| date.to_time.change(hour: hour) }
    all_slots - booked_slots
  end

  def next_7_days_with_slots
    (0..6).map do |i|
      date = Date.today + i.days
      available_slots = self.available_slots(date)
      { date: date, slots: available_slots }
    end
  end
end

