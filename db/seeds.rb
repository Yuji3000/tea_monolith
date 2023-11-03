# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_or_create_by(email: "test@test.com", full_name: "The Tester") do |user|
  user.password = "123"
endStripe.api_key = :secret_key
stripe_products = Stripe::Product.list

teas = stripe_products[:data].map do |product|
  stripe_price_retrieve = Stripe::Price.retrieve("#{product.default_price}")
  Product.find_or_create_by(
    name: product[:name],
    image: product[:images].first,
    price: (stripe_price_retrieve[:unit_amount].to_f / 100.00),
    description: product[:description],
    stripe_default_price: product[:default_price],
    stripe_product_id: product[:id], 
  )
end