require "rails_helper"

RSpec.describe "home" do
  before(:all) do
    Rails.application.load_seed
  end
  
  describe "as a user" do
    it "show should me products on the home page" do
      VCR.use_cassette("all_teas") do
        visit '/'
        save_and_open_page
        expect(page).to have_content("Matcha")
        expect(page).to have_content("Shincha")
        expect(page).to have_content("Mugi-cha")
      end
    end
  end
    
end
