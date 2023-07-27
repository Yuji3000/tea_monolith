class HomeController < ApplicationController
  def home_page
    stripe_products = Stripe::Product.list
    @teas = stripe_products[:data].map do |product|
      stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
      Product.new(product, stripe_price_retrieve)
    end
  end
end