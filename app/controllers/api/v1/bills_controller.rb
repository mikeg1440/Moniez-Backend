class Api::V1::BillsController < ApplicationController

  def index
    render json: @user.bills
  end

  def create
  end

  def update
  end

  def destroy
  end
end
