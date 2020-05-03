class Api::CompaniesController < ApplicationController

  def index
    render json:{companies: generate_company_layoffs(nil)}
  end

  def show
    company = Company.find_by(id: params[:id])
    result = generate_company_layoffs(params[:id])
    render json: result
  end

  def generate_company_layoffs(id = nil)
    companies = id.nil? ? Company.includes(:company_layoffs) : [Company.find_by(id: id)]
    result = {}

   total_number_laid_at_all_companies = 0.0
   total_number_of_employees = 0
    companies.each do |company|
total_number_laid_at_company = 0
total_number_of_employees += company.number_of_employees
      company.company_layoffs.each do |company_lay_off|
	total_number_laid_at_company += company_lay_off.number_laid_off
      end
	total_number_laid_at_all_companies += total_number_laid_at_company
    end

  {total_num_laid_off: total_number_laid_at_all_companies.round(0), unemployment_rate: (total_number_laid_at_all_companies/total_number_of_employees).round(2)}

  end



end
