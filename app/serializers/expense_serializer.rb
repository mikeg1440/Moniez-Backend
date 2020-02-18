class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :amount, :expense_category
end
