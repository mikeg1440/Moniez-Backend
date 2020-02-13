class Budget < ApplicationRecord
  belongs_to :user
  has_many :earnings
  has_many :expenses
  has_many :bills


  validates :title, presence: true

end
