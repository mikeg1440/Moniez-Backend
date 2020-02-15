class Api::V1::BudgetsController < ApplicationController

  def index
    render json: @user.budgets
  end

  def create

  end

  def update
  end

  def destroy
  end

end
