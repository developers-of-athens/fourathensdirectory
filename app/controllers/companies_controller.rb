class CompaniesController < ApplicationController
  respond_to :json
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_filter :check_format

  # GET /companies
  # GET /companies.json
  def index
    @companies = Company.all
  end

  # GET /companies/1
  # GET /companies/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company
      @company = Company.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_params
      params[:company]
    end

    def check_format
      render :nothing => true, :status => 406 unless params[:format] == 'json'
    end
end
