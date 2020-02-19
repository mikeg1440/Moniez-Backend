class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :budget_id, :amount, :expense_category
end
