class WateringsController < ApplicationController
  def new
    @watering = Watering.new
  end
  def create
    @watering = Watering.create(params[:date], params[:amount], params[:plant_type_id])
    redirect_to owner_path(@owner)
  end

end
