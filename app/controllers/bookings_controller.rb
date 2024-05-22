class BookingsController < ApplicationController
  def create
    @gear = Gear.find(params[:gear_id])

    # Find or create the user
    @user = User.find_or_initialize_by(email: booking_params[:email])
    if @user.new_record?
      @user.first_name = booking_params[:first_name]
      @user.last_name = booking_params[:last_name]
      @user.password = SecureRandom.hex(10) # or a hardcoded password
      @user.save!
    end

    # Create the booking
    @booking = @gear.bookings.new(booking_params.except(:first_name, :last_name, :email))
    @booking.user = @user
    @booking.total_price = @gear.hourly_rate

    if @booking.save
      redirect_to gear_booking_path(@gear, @booking), notice: 'Booking was successfully created.'
    else
      render 'gears/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:start_time, :first_name, :last_name, :email)
  end
end