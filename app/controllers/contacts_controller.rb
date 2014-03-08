class ContactsController < ApplicationController
  respond_to :json
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  before_filter :check_format

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params[:contact]
    end


    def check_format
      render :nothing => true, :status => 406 unless params[:format] == 'json'
    end
end
