require "rails_helper"

RSpec.describe Tea, type: :model do
  describe "relationship" do
    it { should have_many(:subscriptions)}
    it { should have_many(:users).through(:subscriptions)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:title)}
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:temperature_f)}
    it { should validate_presence_of(:price_usd)}
    it { should validate_presence_of(:brew_time_seconds)}
  end
end