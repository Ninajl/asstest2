class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)
    @company.industry_id = ind
    if @company.save
      redirect_to company_path(@company), notice: "Company was created successfully"
    else
      render :new
    end
  end

  def show
    @company = Company.find(params[:id])
    @company.industry_id = params[:industry_params]
    @industries = @company.industries
  end

  private

  def company_params
    params.require(:company).permit(:name, :description, :price, :industry_id)
  end

end
