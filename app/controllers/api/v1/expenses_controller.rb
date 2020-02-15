class Api::V1::ExpensesController < ApplicationController

  def index
    render json: @user.expenses
  end

  def create
  end

  def update
  end

  def destroy
  end
end
