class HomeController < ApplicationController
  def home_page
    @teas = Product.all
  end
end