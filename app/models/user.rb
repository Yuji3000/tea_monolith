class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def list_teas
    self.subscriptions.map do |sub|
      Tea.find_by_id(sub.tea_id)
    end
  end
end
