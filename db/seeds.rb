# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer1 = User.create!(id: 4, email: "test@test.com", password: "test")


tea1 = Tea.create!(id: 1, title: "Moya(mist) - Premium Sencha", price_usd: 1.11, description: "Earthy and mild", temperature_f: 111.0, brew_time_seconds: 111)
tea2 = Tea.create!(id: 2, title: "Matcha - Super Premium Grade", price_usd: 2.22, description: "Slightly sweet and charming", temperature_f: 222.0, brew_time_seconds: 222 )
tea3 = Tea.create!(id: 3, title: "Hojicha", price_usd: 2.25, description: "Japanese roasted green tea", temperature_f: 222.0, brew_time_seconds: 222 )
tea4 = Tea.create!(id: 4, title: "Matcha iri sencha", price_usd: 2.22, description: "Japanese green tea mixed with matcha", temperature_f: 222.0, brew_time_seconds: 222 )
tea5 = Tea.create!(id: 5, title: "Sanpincha", price_usd: 2.22, description: "Japanese grown jasmine tea, floral and delicious!", temperature_f: 222.0, brew_time_seconds: 222 )

image1 = Image.create!(name: "sencha.jpeg", tea_id: tea1.id)
image2 = Image.create!(name: "matcha.jpg", tea_id: tea2.id)
image3 = Image.create!(name: "hojicha.jpeg", tea_id: tea3.id)
image4 = Image.create!(name: "TTY021-1.jpg", tea_id: tea4.id)
image5 = Image.create!(name: "sanpincha.jpeg", tea_id: tea5.id)

# subscription1 = Subscription.create!(id: 1, frequency_weeks: 4, customer_id: customer1.id, tea_id: tea1.id, status: "active")
# subscription2 = Subscription.create!(id: 2, frequency_weeks: 4, customer_id: customer1.id, tea_id: tea2.id, status: "active")


