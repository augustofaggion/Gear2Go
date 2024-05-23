class DashboardController < ApplicationController
  # Ensure the user is authenticated - we could also do this in the menu...
  before_action :authenticate_user!



  def show
    if current_user.business_name.present?
      @bookings = current_user.booked_gears.upcoming
    else
      @bookings = Booking.joins(:gear).where(gears: { user_id: current_user.id }).upcoming
    end
  end
end
