class GearsController < ApplicationController
  def show
    @gear = Gear.find(params[:id])
  end
end
