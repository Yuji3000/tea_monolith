require "rails_helper"

RSpec.describe "Stripe Products Api call" do
  before(:each) do
    @response_body = File.read('./spec/fixtures/products.json')

    stub_request(:get, "https://api.stripe.com/v1/products")
      .with(headers: {"Authorization" => "Bearer #{ENV["secret_key"]}"})
      .to_return(status: 200, body: @response_body)
  end

  it "should return all products" do

    response = JSON.parse(@response_body, symbolize_names: true)
    expect(response[:data].count).to eq(9)
    expect(response[:data].first).to have_key(:id)
    expect(response[:data].first).to have_key(:default_price)
    expect(response[:data].first).to have_key(:description)
    expect(response[:data].first).to have_key(:images)
    expect(response[:data].first).to have_key(:name)
  end
end