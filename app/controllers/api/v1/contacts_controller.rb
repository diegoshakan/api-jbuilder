class Api::V1::ContactsController < ApplicationController
  before_action :set_user, only: %i[show create update destroy]
  before_action :set_contact, only: %i[show create update destroy]
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def show; end

  def create
    @contact = @user.contacts.new(contact_params)
    if @contact.save
      render json: @contact
    else
      render json: { message: "entity_not_processed" }
    end
  end

  def update
    @contact.update(contact_params)
    render json: @contact
  end

  def destroy
    @contact.destroy
    render json: {message: "contact deleted with success!"}
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def set_contact
      @contact = @user.contacts.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:phone, :email, :is_whatsapp, :user_id)
    end

    def record_not_found(error)
      render json: { error: error.message }, status: :not_found
    end
end
