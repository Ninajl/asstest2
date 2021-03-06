class IndustriesController < ApplicationController

  def index
    @industries = Industry.all
    @companies = Company.all

  end

  def new
    @industry = Industry.new
  end

  def create
    @industry = Industry.new(industry_params)
    @companies = Company.where(id: params[:company_params])
    @industry.companies = @companies
    if @industry.save
      redirect_to industry_path(@industry), notice: "Industry was created successfully"
    else
      render :new
    end
  end

  def show
    @industry = Industry.find(params[:id])
    @companies = Company.all

    @industry.companies = @companies

  end

  def edit
    @industry = Industry.find(params[:id])
  end

  def update
    @industry = Industry.find(params[:id])
    if @industry.update(industry_params)
      redirect_to industries_path, notice: "Industry was updated successfully"
    else
      render :edit
    end
  end

  def destroy
    @industry = Industry.find(params[:id])
    @industry.destroy
    redirect_to industries_path, notice: "Industry was deleted"
  end

  private
  def industry_params
    params.require(:industry).permit(:name, :description, :company_id)
  end
end
