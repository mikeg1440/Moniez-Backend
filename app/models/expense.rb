class Expense < ApplicationRecord
  belongs_to :budget
  has_one :expense_category

  validates :amount, presence: true
  
end
