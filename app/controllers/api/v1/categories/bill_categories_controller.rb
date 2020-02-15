class Api::V1::Categories::BillCategoriesController < ApplicationController
  def index
    render json: BillCategory.all
  end

  def create
    new_category = BillCategory.create(bill_category_params)
    if new_category.valid?
      render json: new_category, status: :created
    else
      render json: {errors: new_category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    category = BillCategory.find_by(id: params[:id])    
    if category.destroy
      render json: category, status: :accepted
    else
      head(:unprocessable_entity)
    end
  end

  private

  def bill_category_params
    params.require(:bill_category).permit(:id, :title)
  end
end
