class Budget < ApplicationRecord
  after_update :update_total

  belongs_to :user
  has_many :earnings
  has_many :expenses
  has_many :bills


  validates :title, presence: true

  def update_total
    total = self.earnings.all.sum{|earning| earning.amount }
    total -= self.bills.all.sum{|bill| bill.amount}
    total -= self.expenses.all.sum{|expense| expense.amount}
    self.total = total
  end


end
