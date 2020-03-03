class Budget < ApplicationRecord
  after_update :update_total

  belongs_to :user
  has_many :earnings, dependent: :delete_all
  has_many :expenses, dependent: :delete_all
  has_many :bills, dependent: :delete_all


  validates :title, presence: true

  def update_total
    total = self.earnings.all.sum{|earning| earning.amount }
    total -= self.bills.all.sum{|bill| bill.amount}
    total -= self.expenses.all.sum{|expense| expense.amount}
    self.total = total
  end


end
