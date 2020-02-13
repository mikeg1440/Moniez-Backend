class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: session_params[:email])
    if user&.valid_password?(session_params[:password])
      user.save
      render json: user.as_json(only: [:id, :email, :username, :authentication_token])
    else
      head(:unauthorized)
    end
  end

  private

  def session_params
    params.require(:user).permit([:username, :email, :password])
  end
end
