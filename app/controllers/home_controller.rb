class HomeController < ApplicationController
  def home_page
    @teas = Tea.all
    @tea = Tea.find_by_id(params[:tea_id])
  end
end