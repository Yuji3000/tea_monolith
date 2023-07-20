# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
customer1 = User.create!(email: "test@test.com", password: "test")


tea1 = Tea.create!(id: 1, title: "Sencha", price_usd: 1.11, description: "Japanese green tea", temperature_f: 111.0, brew_time_seconds: 111)
tea2 = Tea.create!(id: 2, title: "Matcha", price_usd: 2.22, description: "Powered Japanese green tea", temperature_f: 222.0, brew_time_seconds: 222 )
tea3 = Tea.create!(id: 3, title: "Hojicha", price_usd: 2.25, description: "Japanese roasted green tea", temperature_f: 222.0, brew_time_seconds: 222 )
tea4 = Tea.create!(id: 4, title: "Matcha iri sencha", price_usd: 2.22, description: "Japanese green tea mixed with matcha", temperature_f: 222.0, brew_time_seconds: 222 )
tea4 = Tea.create!(id: 5, title: "Sanpincha", price_usd: 2.22, description: "Japanese grown jasmine tea, floral and delicious!", temperature_f: 222.0, brew_time_seconds: 222 )

subscription1 = Subscription.create!(id: 1, frequency_weeks: 4, customer_id: customer1.id, tea_id: tea1.id, status: "active")
subscription2 = Subscription.create!(id: 2, frequency_weeks: 4, customer_id: customer1.id, tea_id: tea2.id, status: "active")


