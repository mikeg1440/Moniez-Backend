class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  devise :database_authenticatable, :jwt_authenticatable#, jwt_revocation_strategy: JWTBlacklist

  validates :email, presence: true, uniqueness: true
  validates :username, presence:true, uniqueness: true
  validates :password, presence: true

end