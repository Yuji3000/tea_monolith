class CartsController < ApplicationController
  def index
    stripe_products = Stripe::Product.list
    teas = stripe_products[:data].map do |product|
      stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
      Product.new(product, stripe_price_retrieve)
    end
    @cart_items = @cart.map do |id|
      product = Stripe::Product.retrieve(id)
      stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
      Product.new(product, stripe_price_retrieve)
    end

  end

  def add_to_cart
    id = params[:id]
    session[:cart] << id unless session[:cart].include?(id)
    redirect_to root_path
  end

  def remove_from_cart
    id = params[:id]
    session[:cart].delete(id)
    redirect_to root_path
  end
end