class Api::V1::CategoriesController < ApplicationController

  def index
    categories = {
      earnings: EarningCategory.all,
      bills: BillCategory.all,
      expenses: ExpenseCategory.all
    }
    render json: categories, status: :ok
  end

end
