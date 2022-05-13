class CompanyBikesController < ApplicationController
  def index
    @company = Company.find(params[:id])
    @bikes = @company.bikes
  end
end
