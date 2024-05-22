class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_gear, only: [:show]

  def index
    @gears = Gear.all
  end

  def show
    @booking = Booking.new
    date = Date.today
    @available_slots = @gear.available_slots(date)
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
