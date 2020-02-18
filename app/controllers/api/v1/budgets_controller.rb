class Api::V1::BudgetsController < ApplicationController

  def index
    render json: @user.budgets
  end

  def create
    new_budget = @user.budgets.build(budget_params)
    if new_budget.valid?
      new_budget.save
      render json: new_budget, status: :created
    else
      render json: {errors: new_budget.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    budget = Budget.find_by(id: params[:id])
    if budget
      render json: budget, status: :ok
    else
      render json: {errors: 'Failed to get budget'}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    budget = Budget.find_by(id: params[:id])
    if budget&.destroy
      render json: budget, status: :ok
    else
      render json: {errors: "Failed to delete budget"}, status: :unprocessable_entity
    end
  end

  private

  def budget_params
    params.require(:budget).permit(:title, :description)
  end

end
