class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start_time, :total_price, presence: true
end
