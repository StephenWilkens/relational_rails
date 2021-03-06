class CompanyBikesController < ApplicationController
  def index
    @company = Company.find(params[:id])
    # @bikes = @company.bikes
    if (params[:sort])
      @company_bikes = @company.sort_by_name_alphabetically
    else
      @company_bikes = @company.bikes
    end
  end

  def new
   @company = Company.find(params[:id])
  end

  def create
    company = Company.find(params[:id])
    new_bike = company.bikes.new(bike_params)
    new_bike.save
      redirect_to "/companies/#{company.id}/bikes"
  end

  private
  def bike_params
    params.permit(:name, :front_travel, :full_suspension, :created_at, :updated_at)
  end
end
