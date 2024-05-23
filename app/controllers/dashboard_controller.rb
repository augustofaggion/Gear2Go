class DashboardController < ApplicationController
  # Ensure the user is authenticated - we could also do this in the menu...
  before_action :authenticate_user!

  def show
    # @bookings = current_user.bookings
      @bookings = current_user.booked_gears
  end
end
