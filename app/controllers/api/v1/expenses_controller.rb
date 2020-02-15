class Api::V1::ExpensesController < ApplicationController

  def index
    render json: @user.expenses
  end

  def create
    budget = Budget.find_by(id: expense_params[:budget_id])
    new_expense = budget.expenses.build(expense_params)

    if new_expense.valid?
      budget.save
      render json: new_expense, status: :created
    else
      render json: {errors: new_expense.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    expense = @user.expenses.find_by(id: params[:id])
    if expense.destroy
      render json: expense, status: :ok
    else
      render json: {errors: "Could not destroy expense"}, status: :unprocessable_entity
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:budget_id, :expense_category_id, :amount)
  end

end
