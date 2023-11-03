class PaymentsController < ApplicationController
  def new
  end
  
  def create
    @cart_to_items = @cart.map do |item|
      Product.where(stripe_product_id: item)
    end

    cart_items = []
    @cart_to_items.map do |item|
      hash = Hash.new
      hash[:price] = item.first.stripe_default_price
      hash[:quantity] = 1
      cart_items << hash
    end

    customer = Stripe::Customer.create(
      name: current_user.full_name,
      email: current_user.email,
      description: "Customer id: #{current_user.id}",
    )
    session = Stripe::Checkout::Session.create( 
      customer: customer, 
      payment_method_types: ["card"],
      line_items: [cart_items],
      mode: 'subscription',
      success_url:  payments_success_url,
      cancel_url: payments_cancel_url
     )
     redirect_to session.url, status: 303, allow_other_host: true
  end
  
  def success
    session[:cart].clear
    redirect_to root_url, notice: "Purchase Successful"
  end
  
  def cancel
    redirect_to root_url, notice: "Purchase Unsuccessful"
  end

end