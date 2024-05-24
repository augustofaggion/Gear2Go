class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @gears = Gear.joins(:user)
    if params[:query].present?
      @gears = @gears.where("users.city ILIKE ?", "%#{params[:query]}%")
    end
  end

  def my_gears
    @gears = current_user.gears
  end

  def show
    @booking = Booking.new
    @gear = Gear.find(params[:id])
    @next_7_days_with_slots = @gear.next_n_days_with_slots(7)
  end

  def new
    @gear = current_user.gears.build
  end

  def create
    @gear = current_user.gears.build(gear_params)
    if @gear.save
      redirect_to my_gears_path, notice: 'Gear was successfully created.'
    else
      render :new
    end
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def update
    @gear = Gear.find(params[:id])
    if @gear.update(gear_params)
      redirect_to my_gears_path, notice: 'Gear was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    redirect_to my_gears_path, notice: 'Gear was successfully deleted.'
  end

  private

  def gear_params
    params.require(:gear).permit(:name, :description, :hourly_rate, :photo)
  end
end
