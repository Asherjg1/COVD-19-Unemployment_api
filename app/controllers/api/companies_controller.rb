class Api::CompaniesController < ApplicationController
  def index
    render json:{companies: Company.all}
  end
  def show
    company=Company.first
    company_lay_offs = Hash.new {|h,k| h[k] = [] }

      company.company_layoffs.each do |company_lay_off|
        company_lay_offs[company.name].push(company_lay_off)


    end
    render json: company_lay_offs
  end

end
