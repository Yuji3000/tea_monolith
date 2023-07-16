class HomeController < ApplicationController
  def home_page
    @user = current_user
    @teas = Tea.all
    @tea = Tea.find_by_id(params[:tea_id])
  end
end