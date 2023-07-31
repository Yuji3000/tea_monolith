class HomeController < ApplicationController
  def home_page
    # stripe_products = Stripe::Product.list
    # @teas = stripe_products[:data].map do |product|
    #   stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
    #   # require 'pry'; binding.pry
    #   Product.create(
    #     name: product[:name],
    #     image: product[:images].first,
    #     price: (stripe_price_retrieve[:unit_amount].to_f / 100.00),
    #     description: product[:description],
    #     stripe_default_price: product[:default_price],
    #     stripe_product_id: product[:id], 
    #   )
    # end
    # require 'pry'; binding.pry
    @teas = Product.all

    # stripe_products = Stripe::Product.list
    # @teas = stripe_products[:data].map do |product|
    #   stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
    #   Product.new(product, stripe_price_retrieve)
    # end
  end
end