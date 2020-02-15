class Api::V1::SessionsController < ApplicationController
  skip_before_action :authenticate_user, only: [:login]

  def login
    user = User.find_by(email: session_params[:email])
    if user&.valid_password?(session_params[:password])
      response.set_header('bearer', user.authentication_token)
      render json: user
    else
      render json: {errors: 'Incorrect Authentication'}, status: :unauthorized
    end
  end

  def logout
    user = User.find_by(authentication_token: request.headers[:bearer])
    if user
      user.authentication_token.clear
      response.delete_token(:bearer)
      head(:ok)
    else
      head(:not_acceptable)
    end
  end

  private

  def session_params
    params.require(:user).permit([:username, :email, :password])
  end
end
