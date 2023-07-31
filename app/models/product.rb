class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :stripe_product_id, presence: true
  validates :stripe_default_price, presence: true

end