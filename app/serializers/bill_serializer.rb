class BillSerializer < ActiveModel::Serializer
  attributes :id, :amount, :bill_category
end
