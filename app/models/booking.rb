class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :gear
  validates :start_time, :total_price, presence: true
  has_one :owner, through: :gear, source: :user
end
