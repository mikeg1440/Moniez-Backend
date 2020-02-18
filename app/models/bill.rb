class Bill < ApplicationRecord
  belongs_to :budget
  belongs_to :bill_category

  validates :amount, presence: true
end
