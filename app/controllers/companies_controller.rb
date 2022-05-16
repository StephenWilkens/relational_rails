class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
    @bikes = @company.bikes
  end

  def new
  end

  def create
    new_comp = Company.create(company_params)
    redirect_to "/companies/#{new_comp.id}"
  end

  private
  def company_params
    params.permit(:name, :location, :total_stock, :pro_deal, :created_at, :updated_at, :company_id)
  end
end
