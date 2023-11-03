require 'rails_helper'

RSpec.describe User, type: :model do
  describe "relationship" do
    # it { should have_many(:subscriptions)}
    # it { should have_many(:teas).through(:subscriptions)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password)}
  end

  describe 'list_teas' do
    it 'can take a user and list all the teas from their subscriptions' do
      user = User.create!(email: "Mr.Pickles@gmail.com", password: "1234")
      
      tea1 = Product.create!(id: 1, name: "Sencha", price: 1.11, description: "Japanese green tea", stripe_default_price: "1.11", stripe_product_id: "1")
      tea2 = Product.create!(id: 2, name: "Matcha", price: 2.22, description: "Powered Japanese green tea", stripe_default_price: "2.22", stripe_product_id: "11")
    end

  end
end
