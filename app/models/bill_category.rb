class BillCategory < ApplicationRecord

  validates :title, uniqueness: true
end
