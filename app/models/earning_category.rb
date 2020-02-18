class EarningCategory < ApplicationRecord
  has_many :earnings
  validates :title, uniqueness: true

end
