require "rails_helper"

RSpec.describe Subscription, type: :model do
  describe "relationship" do
    it { should belong_to(:user)}
    it { should belong_to(:tea)}
  end
  
  describe 'validations' do
    it { should validate_presence_of(:status)}
    it { should validate_presence_of(:frequency_weeks)}
  end
end