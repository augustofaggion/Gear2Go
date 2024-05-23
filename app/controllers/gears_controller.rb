class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_gear, only: [:show]

  def index
    @gears = Gear.joins(:user)

    if params[:query].present?
      @gears = @gears.where("users.city ILIKE ?", "%#{params[:query]}%")
    end
  end

  def show
    @booking = Booking.new
    @gear = Gear.find(params[:id])
    @next_7_days_with_slots = @gear.next_7_days_with_slots
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
