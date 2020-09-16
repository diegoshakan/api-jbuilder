class Api::V1::ContactsController < ApplicationController
  before_action :set_contact, only: %i[show create update destroy]
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def index
    @contacts = Contact.all
    # render json: @contacts
  end

  def show
    # render json: @contact
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    render json: @contact
  end

  def update
    @contact.update
    render json: @contact
  end

  def destroy
    @contact.destroy
    render json: {message: "contact deleted with success!"}
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:phone, :email, :is_whatsapp)
    end

    def record_not_found(error)
      render json: { error: error.message }, status: :not_found
    end
end
