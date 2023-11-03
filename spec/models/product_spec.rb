require "rails_helper"

RSpec.describe Product, type: :model do
  describe "relationship" do

  end
  
  describe 'validations' do
    it { should validate_presence_of(:name)}
    it { should validate_presence_of(:description)}
    it { should validate_presence_of(:stripe_product_id)}
    it { should validate_presence_of(:stripe_default_price)}
  end
end