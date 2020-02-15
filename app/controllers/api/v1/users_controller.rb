class Api::V1::UsersController < ApplicationController
  # before_action :set_user, only: [:update, :destroy]
  skip_before_action :authenticate_user, only: [:register_user]

  def register_user
    user = User.new(user_params)
    if user.valid?
      user.save
      response.headers['bearer'] = user.authentication_token
      render json: user, status: :created
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update_user
    if @user&.valid_password?(user_params[:password])
      @user.update(user_params)
      render json: @user, status: :accepted
    else
      if @user&.errors
        render json: {errors: ["Incorrect Password"]}, status: :unauthorized
      else
        head(:unprocessable_entity)
      end
    end
  end

  def destroy_user
    if @user&.destroy
      render json: @user.as_json(only: [:username, :email]), status: :accepted
    else
      head(:unprocessable_entity)
    end
  end

  private

  # def set_user
  #   if params[:id]
  #     @user = User.find_by(id: params[:id])
  #   else
  #     @user = User.find_by(email: user_params[:email])
  #   end
  # end

  def user_params
    params.require(:user).permit([:username, :email, :password, :password_confirmation])
  end
end
