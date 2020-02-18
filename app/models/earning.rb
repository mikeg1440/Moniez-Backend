class Earning < ApplicationRecord
  belongs_to :budget
  belongs_to :earning_category

  validates :amount, presence: true

end
