class User < ApplicationRecord

  has_many :subscriptions
  has_many :teas, through: :subscriptions

  has_secure_password
  
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
