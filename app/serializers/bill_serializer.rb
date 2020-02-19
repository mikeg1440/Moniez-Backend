class BillSerializer < ActiveModel::Serializer
  attributes :id, :budget_id, :amount, :bill_category
end
