class Bill < ApplicationRecord
  belongs_to :budget
  has_one :bill_category

  validates :amount, presence: true
end
