require 'rails_helper'

RSpec.describe MoneyPresenter do
    let(:product) {Product.create!(name: "product1", description: "its a test!", image: "iasd", price: 3.99, stripe_default_price: "wer", stripe_product_id: "233r")}
    let(:product2) {Product.create!(name: "product2", description: "its a test!", image: "iasd", price: 3.0, stripe_default_price: "wer", stripe_product_id: "233r")}

  describe "#format_price" do
    it "should return the product price formatted correctly" do

      expect(MoneyPresenter.new(product).format_price).to eq("$3.99")
      expect(MoneyPresenter.new(product2).format_price).to eq("$3.00")
    end
  end
end