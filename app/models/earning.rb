class Earning < ApplicationRecord
  belongs_to :budget
  has_one :earning_category

  validates :amount, presence: true
  
end
