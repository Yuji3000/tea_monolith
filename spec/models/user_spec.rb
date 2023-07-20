require 'rails_helper'

RSpec.describe User, type: :model do
  describe "relationship" do
    it { should have_many(:subscriptions)}
    it { should have_many(:teas).through(:subscriptions)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:email)}
    it { should validate_presence_of(:password)}
  end

  describe 'list_teas' do
    it 'can take a user and list all the teas from their subscriptions' do
      user = User.create!(email: "Mr.Pickles@gmail.com", password: "1234")
      
      tea1 = Tea.create!(id: 1, title: "Sencha", price_usd: 1.11, description: "Japanese green tea", temperature_f: 111.0, brew_time_seconds: 111)
      tea2 = Tea.create!(id: 2, title: "Matcha", price_usd: 2.22, description: "Powered Japanese green tea", temperature_f: 222.0, brew_time_seconds: 222 )

      subscription1 = Subscription.create!(id: 1, frequency_weeks: 4, user_id: user.id, tea_id: tea1.id, status: "active")
      subscription2 = Subscription.create!(id: 2, frequency_weeks: 4, user_id: user.id, tea_id: tea2.id, status: "active")

      expect(user.list_teas).to eq([tea1, tea2])
    end

  end
end
