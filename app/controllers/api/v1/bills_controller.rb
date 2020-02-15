class Api::V1::BillsController < ApplicationController


  def index
    render json: @user.bills
  end

  def create
    budget = Budget.find_by(id: bill_params[:budget_id])
    new_bill = budget.bills.build(bill_params)
    
    if new_bill.valid?
      budget.save
      render json: new_bill, status: :created
    else
      render json: {errors: new_bill.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
  end

  def destroy
    bill = @user.bills.find_by(id: params[:id])
    if bill.destroy
      render json: bill, status: :ok
    else
      render json: {errors: "Could not destroy bill"}, status: :unprocessable_entity
    end
  end

  private

  def bill_params
    params.require(:bill).permit(:budget_id, :bill_category_id, :amount)
  end
end
