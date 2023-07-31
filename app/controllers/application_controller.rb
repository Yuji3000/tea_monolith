class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user
  before_action :initialize_session
  before_action :load_cart

  def current_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to "/signup" unless logged_in?
  end

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    stripe_products = Stripe::Product.list
    teas = stripe_products[:data].map do |product|
      stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
      Product.new(product, stripe_price_retrieve)
    end
    @cart = session[:cart]
  end
end
