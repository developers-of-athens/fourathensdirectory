class OfficesController < ApplicationController
  respond_to :json
  before_action :set_office, only: [:show, :edit, :update, :destroy]
  before_filter :check_format

  # GET /offices.json
  def index
    @offices = Office.all
  end

  # GET /offices/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @office = Office.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_params
      params[:office]
    end

    def check_format
      render :nothing => true, :status => 406 unless params[:format] == 'json'
    end
end
