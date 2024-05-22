class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :set_gear, only: [:show]

  def index
    @gears = Gear.all
  end

  def show
    @booking = Booking.new
  end

  private

  def set_gear
    @gear = Gear.find(params[:id])
  end
end
