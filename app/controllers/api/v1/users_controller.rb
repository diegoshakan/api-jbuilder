class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def index
    @users = User.all
  end

  def show
  end

  def create
    @user = User.new(user_params)
    @user.save

    render json: @user
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
    render json: {message: "user deleted with success!"}
  end

  private

    def user_params
      params.require(:user).permit(
        :first_name, :last_name, :age,
        contacts_attributes: [
          :phone, :email, :is_whatsapp
        ]
      )
    end

    def set_user
      @user = User.find(params[:id])
    end

    def record_not_found(error)
      render json: { error: error.message }, status: :not_found
    end
end
