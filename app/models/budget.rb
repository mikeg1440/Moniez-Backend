class Budget < ApplicationRecord
  belongs_to :user
<<<<<<< Updated upstream

=======
  has_many :earnings
  has_many :expenses
  has_many :bills

  
>>>>>>> Stashed changes
  validates :title, presence: true

end
