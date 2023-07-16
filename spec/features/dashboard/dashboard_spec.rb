require "rails_helper"

RSpec.describe "dashboard" do
  describe "as a user" do
    it "once logged in, a user will find ____ on the dashboard" do
      user = User.create!(username: "Mr. Pickles", password: "1234")
      visit '/'
      click_button("Login")
      fill_in "Username", with: "#{user.username}"
      fill_in "Password", with: "#{user.password}"
      click_on("Log In")
      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_content("Welcome to the page of Mr. Pickles")
    end
    
    it 'has a dashboard with a tea link' do
      user = User.create!(username: "Mr. Pickles", password: "1234")
      visit '/'
      click_button("Login")
      fill_in "Username", with: "#{user.username}"
      fill_in "Password", with: "#{user.password}"
      click_on("Log In")

      expect(current_path).to eq("/users/#{user.id}")
      expect(page).to have_link("Teas")
      click_on("Teas")
      expect(current_path).to eq("/teas")
    end

    it 'has a dashboard with a subscriptions link' do
      user = User.create!(username: "Mr. Pickles", password: "1234")
      
      tea1 = Tea.create!(id: 1, title: "Sencha", price_usd: 1.11, description: "Japanese green tea", temperature_f: 111.0, brew_time_seconds: 111)
      tea2 = Tea.create!(id: 2, title: "Matcha", price_usd: 2.22, description: "Powered Japanese green tea", temperature_f: 222.0, brew_time_seconds: 222 )
      tea3 = Tea.create!(id: 3, title: "Hojicha", price_usd: 2.25, description: "Japanese roasted green tea", temperature_f: 222.0, brew_time_seconds: 222 )
      tea4 = Tea.create!(id: 4, title: "Matcha iri sencha", price_usd: 2.22, description: "Japanese green tea mixed with matcha", temperature_f: 222.0, brew_time_seconds: 222 )
      tea4 = Tea.create!(id: 5, title: "Sanpincha", price_usd: 2.22, description: "Japanese grown jasmine tea, floral and delicious!", temperature_f: 222.0, brew_time_seconds: 222 )

      subscription1 = Subscription.create!(id: 1, frequency_weeks: 4, user_id: user.id, tea_id: tea1.id, status: "active")
      subscription2 = Subscription.create!(id: 2, frequency_weeks: 4, user_id: user.id, tea_id: tea2.id, status: "active")
      
      
      visit '/'
      click_button("Login")
      fill_in "Username", with: "#{user.username}"
      fill_in "Password", with: "#{user.password}"
      click_on("Log In")
      expect(current_path).to eq("/users/#{user.id}")

      click_on("My Subscriptions")
      expect(current_path).to eq("/users/#{user.id}/subscriptions")
      expect(page).to have_content("#{user.username}'s Subscriptions")
      save_and_open_page
    end
  end
  
end