class UsersController < ApplicationController
  def show
    @user = User.find(user_params)
    @bookings = @user.booked_gears
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :business_name, :city, :phone)
  end
end
