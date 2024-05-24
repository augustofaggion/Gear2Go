class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start_time, :total_price, presence: true

  # The owner is gear owner, not the user who booked the gear
  has_one :owner, through: :gear, source: :user

  # Scopes for upcoming and past bookings to only show upcoming bookings for the owner
  scope :upcoming, -> { where("start_time >= ?", Date.today).order(start_time: :asc) }

  # Scope not used yet, but could be used to show past bookings for the owner as an archive
  scope :past, -> { where("start_time < ?", Date.today).order(start_time: :desc) }
end
