class ContactsController < ApplicationController
  respond_to :json
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
    render :json => @contacts
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    render :json => @contact
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
end
