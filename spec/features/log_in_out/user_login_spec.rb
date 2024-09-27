require "rails_helper"

RSpec.describe "teas index page" do
  describe "login" do
    it "can login a new user" do
      visit '/login'

      expect(page).to have_button("Login")
      # expect(page).to have_button("Create New Account")
    end

    it "login button routes to login page" do
      visit '/'
      expect(page).to have_button("Login")

      click_on "Login"
      expect(current_path).to eq("/login")
    end


    it "A new user can sign up - happy path" do
      visit '/'
      click_on "Create New Account"
      expect(current_path).to eq("/signup")

      fill_in "Username", with: "Santa"
      fill_in "Password", with: "123"
      fill_in "Password confirmation", with: "123"
      click_button("Create Account")
      expect(current_path).to eq("/login")
    end

    it "A new user can't sign up - sad path" do
      visit "/signup"

      fill_in "Username", with: ""
      fill_in "Password", with: "123"
      fill_in "Password confirmation", with: "123"
      click_button("Create Account")
      expect(current_path).to eq("/signup")
      expect(page).to have_content("Username can't be blank")
    end

    it 'should not have a login button' do
      visit "/signup"

      expect(page).to_not have_button("Login")
    end
  end
end