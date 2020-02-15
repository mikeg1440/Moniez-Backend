class Api::V1::EarningsController < ApplicationController

  def index
    render json: @user.earnings
  end

  def create
    budget = Budget.find_by(id: earning_params[:budget_id])
    new_earning = budget.earnings.build(earning_params)

    if new_earning.valid?
      budget.save
      render json: new_earning, status: :created
    else
      render json: {errors: new_earning.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    earning = @user.earnings.find_by(id: params[:id])
    if earning.destroy
      render json: earning, status: :ok
    else
      render json: {errors: "Could not destroy earning"}, status: :unprocessable_entity
    end
  end

  private

  def earning_params
    params.require(:earning).permit(:budget_id, :earning_category_id, :amount)
  end

end
