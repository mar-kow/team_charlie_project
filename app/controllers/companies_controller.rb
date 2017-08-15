class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    if @company.save
      redirect_to request.referrer
    end
  end

  def show
    @company = Company.find(params[:id])
  end

  def index

  end
end
