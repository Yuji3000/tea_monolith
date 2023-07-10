require 'rails_helper'

RSpec.describe User, type: :model do
  describe "relationship" do
    it { should have_many(:subscriptions)}
    it { should have_many(:teas).through(:subscriptions)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:username)}
    it { should validate_presence_of(:password)}
  end
end
