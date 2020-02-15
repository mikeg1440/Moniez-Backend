class Api::V1::Categories::EarningCategoriesController < ApplicationController
  def index
    render json: EarningCategory.all
  end

  def create
    new_category = EarningCategory.create(earning_category_params)
    if new_category.valid?
      render json: new_category, status: :created
    else
      render json: {errors: new_category.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    category = EarningCategory.find_by(id: params[:id])
    if category.destroy
      render json: category, status: :accepted
    else
      head(:unprocessable_entity)
    end
  end

  private

  def earning_category_params
    params.require(:earning_category).permit(:id, :title)
  end

end
