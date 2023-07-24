class Tea < ApplicationRecord
  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_one :image
  validates :title, :price_usd, :description, :temperature_f, :brew_time_seconds, presence: true
end