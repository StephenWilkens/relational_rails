class BikesController < ApplicationController
  def index
    @bikes = Bike.all
  end

  def show
    @bike = Bike.find(params[:id])
  end

  def edit
    @bike = Bike.find(params[:id])
  end

  def update
    bike = Bike.find(params[:id])
    bike.update(bike_params)
    redirect_to("/bikes/#{bike.id}")
  end

  def destroy
    bike = Bike.find(params[:id])
    bike.destroy
    redirect_to("/bikes")
  end

  private
  def bike_params
    params.permit(:name, :front_travel, :full_suspension, :created_at, :updated_at)
  end
end
