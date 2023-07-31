class CartsController < ApplicationController
  def index
    @cart_items = @cart.map do |item|
      Product.where(stripe_product_id: item)
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