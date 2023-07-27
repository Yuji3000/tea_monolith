class PaymentsController < ApplicationController
  def new
  end
  
  def create
     
    customer = Stripe::Customer.create(
      name: "Tom",
      email: "Tom@tom.com",
      # name: current_user.full_name,
      # email: current_user.email,
      # description: "Customer id: 1",
      # description: "Customer id: #{current_user.id}",
    )
  
    session = Stripe::Checkout::Session.create( 
      customer: customer, 
      payment_method_types: ["card"],
      line_items: [{
        price: 'price_1NXWz5Bkm8h4BfJbqnRHCpEG', #price api id usually starts with price_ApIiD
        quantity: 1,
      }],
      mode: 'subscription',
      success_url:  payments_success_url,
      cancel_url: payments_cancel_url
     )
     redirect_to session.url
  end
  
  def success
    #handle successful payments
    redirect_to root_url, notice: "Purchase Successful"
  end
  
  def cancel
    #handle if the payment is cancelled
    redirect_to root_url, notice: "Purchase Unsuccessful"
  end

end