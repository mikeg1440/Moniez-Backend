class Api::V1::EarningsController < ApplicationController

  def index
    render json: @user.earnings
  end

  def create
  end

  def update
  end

  def destroy
  end
end
