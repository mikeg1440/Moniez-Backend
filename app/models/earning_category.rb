class EarningCategory < ApplicationRecord

  validates :title, uniqueness: true

end
