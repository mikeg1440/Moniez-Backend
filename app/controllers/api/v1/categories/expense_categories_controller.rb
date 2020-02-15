class Api::V1::Categories::ExpenseCategoriesController < ApplicationController
  def index
    render json: ExpenseCategory.all
  end

  def create
    new_category = ExpenseCategory.create(expense_category_params)
    if new_category.valid?
      render json: new_category, status: :created
    else
      render json: {errors: new_category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    category = ExpenseCategory.find_by(id: params[:id])
    if category.destroy
      render json: category, status: :accepted
    else
      head(:unprocessable_entity)
    end
  end

  private

  def expense_category_params
    params.require(:expense_category).permit(:id, :title)
  end
end
