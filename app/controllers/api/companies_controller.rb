class Api::CompaniesController < ApplicationController
  def index
    render json:{companies: Company.all}
  end
  def show
    company=Company.find_by(id: params[:id])
    company_lay_offs = Hash.new {|h,k| h[k] = [] }

    company.company_layoffs.each do |company_lay_off|
      data={number_laid_off:company_lay_off.number_laid_off}
      company_lay_offs[company.name].push(data)


    end
    render json: company_lay_offs
  end

end
