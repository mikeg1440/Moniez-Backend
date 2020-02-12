class Api::V1::Users::SessionsController < ApplicationController

  def create
    user = User.find_by(email: params[:email])

    if user & user.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email, :username])
    else
      head(:unauthorized)
    end
  end

  def destroy

  end

  private

  def sessions_params
    params.require(:user).permit([:username, :email, :password])
  end
end
