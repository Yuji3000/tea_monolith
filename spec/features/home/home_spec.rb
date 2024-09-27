require "rails_helper"

RSpec.describe "home" do
  before(:each) do
    Capybara.asset_host = 'http://localhost:3000'
    @product1 = Product.create!(id: 1, name: "Genmai Cha", description: "Green tea with roasted brown rice",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfNmdaZEJDN2MzNjQ4d2x4V3ZDY0xEejVB00MicAJBlg",
      price: 8.99, stripe_product_id: "prod_OLJlyXyGqhVqGT", stripe_default_price: "price_1NYd87Bkm8h4BfJb7p6DLvuW")
      
      @product2 = Product.create!(id: 2, name: "Sanpincha", description: "Japanese grown jasmine tea, floral and delicious!",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfVjhaNzBxQlhBUVhEdzRTTmpjRXhkeHZM00zBqoQFCN",
      price: 12.99, stripe_product_id: "prod_OKBLVcXv9vfxwB", stripe_default_price: "price_1NXWz5Bkm8h4BfJbqnRHCpEG")
    
      @product3 = Product.create!(id: 3, name: "Matcha iri sencha", description: "Japanese green tea mixed with matcha. The best of both worlds.",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfM1NKQVFIaUhvMzhhcnhhV3l3ajdtOWxu006e4ADjTT",
      price: 18.99, stripe_product_id: "prod_OKBK8JJqprMIC3", stripe_default_price: "price_1NXWxnBkm8h4BfJb8lF3oorW")
      
    
      @product4 = Product.create!(id: 4, name: "Hojicha", description: "Roasted green tea, great depth of flavor",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfVVZ6dHB2QVRIVHA0OE1mTHJPN0RKdmxM00UIQptbYH",
      price: 15.99, stripe_product_id: "prod_OKBGax5EaJgSzI", stripe_default_price: "price_1NXWtiBkm8h4BfJb6qKe1Xb2")
    
      @product5 = Product.create!(id: 5, name: "Matcha - Super Premium Grade", description: "Slightly sweet and charming",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfMzFQRllncVJyRFNuZVpKS0RFM0U0aTlw00djFrXiKR",
      price: 33.99, stripe_product_id: "prod_OKBEBqSEsJvZQU", stripe_default_price: "price_1NXWrZBkm8h4BfJbYdaMWvdG")
    
      @product6 = Product.create!(id: 6, name: "Moya(mist) - Premium Sencha",  description: "Earthy and mild",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfUnI4Qzk4MXVHckozNlhXakFkUDFoMFdv00LutOnJ1b",
      price: 15.99, stripe_product_id: "prod_OKBDyOe1biNQ54", stripe_default_price: "price_1NXWqpBkm8h4BfJbmpkZ8CIN")
    
      @product7 = Product.create!(id: 7, name: "Premium Matcha", description: "The daily drinker you're looking for. A silky texture and smooth flavor.",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfMHBob2kxQm1ubGRwcVJ3UmZQeGtRWUlv00yC6StIR1",
      price: 22.0, stripe_product_id: "prod_OwC1AzhxC6suHv", stripe_default_price: "price_1O8JdEBkm8h4BfJbaVjJjgAS")
      
      @product8 = Product.create!( id: 8, name: "Shincha", description: "First flush sencha(leaf green tea). A rare seasonal treat.",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfTkJXVXB4SmdRNklkRGlISGNzRlRFQXhG00weMsPRNF",
      price: 21.0, stripe_product_id: "prod_OwBxhBcBXSPZqt", stripe_default_price: "price_1O8JZGBkm8h4BfJbBBcnuFz0")
    
      @product9 = Product.create!(id: 9, name: "Mugi-cha, Barley Tea", description: "Tastes great hot or cold. A must buy for the summer.",
      image: "https://files.stripe.com/links/MDB8YWNjdF8xTldMTm9Ca204aDRCZkpifGZsX3Rlc3RfcFNnWTl2TmRKNVl2a0xyd3pqWEROWVdG00gNgksVXs",
      price: 7.25, stripe_product_id: "prod_OwBsdFACEp0JN4", stripe_default_price: "price_1O8JV0Bkm8h4BfJbfwEPuQAL")
  
  end
  
  describe "as a user" do
    it "show should me products on the home page" do

      visit '/'
      expect(page).to have_content(@product1.name)
      expect(page).to have_content(@product1.description)
      expect(page).to have_content(@product1.price)
      # within("#thing") do
      #   expect(page).to have_content("Add to cart")
      # end
    end
  end
    
end
