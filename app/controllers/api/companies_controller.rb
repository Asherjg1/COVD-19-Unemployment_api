class Api::CompaniesController < ApplicationController
  def index
    render json: Company.all 
  end
end
