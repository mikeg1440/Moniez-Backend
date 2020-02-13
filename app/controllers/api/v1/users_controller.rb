class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :destroy]

  def create
    binding.pry
    user = User.new(user_params)
    if user.valid?
      user.save
      render json: user.as_json(only: [:id, :email, :username]), status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :unauthorized
    end
  end

  def update
    binding.pry
    if @user&.valid_password?(user_params[:password])
      @user.update(user_params)
      render json: @user.as_json(only: [:id, :username, :email]), status: :accepted
    else
      if @user&.errors
        render json: {errors: ["Incorrect Password"]}, status: :unauthorized
      else
        head(:unauthorized)
      end
    end
  end

  def destroy
    if @user&.destroy
      render json: @user.as_json(only: [:username, :email]), status: :accepted
    else
      head(:unauthorized)
    end
  end

  private

  def set_user
    if params[:id]
      @user = User.find_by(id: params[:id])
    else
      @user = User.find_by(email: user_params[:email])
    end
  end

  def user_params
    params.require(:user).permit([:username, :email, :password, :password_confirmation])
  end
end
