class Bill < ApplicationRecord
  after_create :update_budget
  after_destroy :update_budget

  belongs_to :budget
  belongs_to :bill_category

  validates :amount, presence: true

  def update_budget
    self.budget.update_total
  end
  
end
