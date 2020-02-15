class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :budgets
end
