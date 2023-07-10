require "rails_helper"

RSpec.describe "teas index page" do
  describe "tea info" do
    it "can show data on the teas page" do
      visit '/teas'
      save_and_open_page
      expect(page).to have_content("sencha")
    end
  end
end