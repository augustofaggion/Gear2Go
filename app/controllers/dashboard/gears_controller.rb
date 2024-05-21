# app/controllers/dashboard/gears_controller.rb
module Dashboard
  class GearsController < ApplicationController

    before_action :authenticate_user!
    before_action :ensure_business_owner
    before_action :set_gear, only: [:edit, :update]


    def index
      @gears = current_user.gears
    end

    def new
      @gear = current_user.gears.build
    end

    def create
      @gear = current_user.gears.build(gear_params)
      if @gear.save
        redirect_to dashboard_gears_path, notice: 'Gear was successfully created.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @gear.update(gear_params)
        redirect_to dashboard_gears_path, notice: 'Gear was successfully updated.'
      else
        render :edit
      end
    end

    def destroy
      @gear = Gear.find(params[:id])
      @gear.destroy
      redirect_to dashboard_gears_path, notice: 'Gear was successfully deleted.'
    end

    private

    def ensure_business_owner
      unless current_user.business_name.present?
        redirect_to root_path, alert: "Access denied."
      end
    end

    def set_gear
      @gear = current_user.gears.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to dashboard_gears_path, alert: "Gear not found."
    end

    def gear_params
      params.require(:gear).permit(:name, :description, :hourly_rate)
    end
  end
end
