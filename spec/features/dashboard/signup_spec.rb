require "rails_helper"

RSpec.describe "dashboard" do
  describe "as a user" do
    it "I will sign up and be routed to the dashboard" do
      visit '/'
      click_on("Sign Up")
      expect(current_path).to eq("/signup")

      fill_in "Email", with: "yuji@gmail.com"
      fill_in "Password", with: "yujiiscool"
      fill_in "Password confirmation", with: "yujiiscool"
      click_on("Create Account")
      expect(User.last.email).to eq("yuji@gmail.com")
      expect(current_path).to eq("/login")
      
      fill_in "Email", with: "yuji@gmail.com"
      fill_in "Password", with: "yujiiscool"
      click_on("Log In")
      expect(current_path).to eq("/")
    end
  end
end