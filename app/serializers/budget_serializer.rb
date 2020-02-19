class BudgetSerializer < ActiveModel::Serializer
  # attributes :id, :title, :description, :earnings, :expenses, :bills
  attributes :id, :title, :description, :total, :earnings, :expenses, :bills

  def earnings
    earnings = Earning.where(budget_id: self.object.id)
    earnings_object = earnings.map {|earning| EarningSerializer.new(earning).as_json}
    earnings_object
  end

  def expenses
    expenses = Expense.where(budget_id: self.object.id)
    expenses_object = expenses.map {|expense| ExpenseSerializer.new(expense).as_json}
    expenses_object
  end

  def bills
    bills = Bill.where(budget_id: self.object.id)
    bills_object = bills.map {|bill| BillSerializer.new(bill).as_json}
    bills_object
  end


end
