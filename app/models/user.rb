class User < ApplicationRecord
  has_many :budgets
  has_many :bills, through: :budgets
  has_many :earnings, through: :budgets
  has_many :expenses, through: :budgets

  acts_as_token_authenticatable
  # has_secure_password
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable#, :jwt_authenticatable, jwt_revocation_strategy: JWTBlacklist

  validates :email, presence: true, uniqueness: true
  validates :username, presence:true, uniqueness: true
  # this password validation may cause issues on the front end
  validates :encrypted_password, presence: true


end
