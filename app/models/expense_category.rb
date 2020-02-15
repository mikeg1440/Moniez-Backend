class ExpenseCategory < ApplicationRecord

  validates :title, uniqueness: true

end
