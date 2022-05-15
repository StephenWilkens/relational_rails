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
    new_comp = Company.create(name: params[:name])
    redirect_to "/companies/#{new_comp.id}"
  end
end
