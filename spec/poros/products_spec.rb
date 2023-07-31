require 'rails_helper'

RSpec.describe Product do
  it "will organize data" do
    product_info = Stripe::Product.list
    price_info = Stripe::Price.retrieve("#{product_info[:data].first.default_price}")
  
    first_product = product_info[:data].first
    product = Product.new(first_product, price_info)
    require 'pry'; binding.pry
    expect(product.name).to eq("Sanpincha")
    expect(product.price).to eq(12.99)
    expect(product.images).to eq(["https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfVjhaNzBxQlhBUVhEdzRTTmpjRXhkeHZM00zBqoQFCN"])
    expect(product.description).to eq(nil)
    expect(product.id).to eq("prod_OKBLVcXv9vfxwB")
  end
end