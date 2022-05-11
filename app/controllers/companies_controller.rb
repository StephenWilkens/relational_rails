class CompaniesController < ApplicationController
  def index
    @companies = Company.all
    require "pry"; binding.pry
  end
end
