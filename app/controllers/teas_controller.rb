class TeasController < ApplicationController
  def index
    @user = current_user
    @teas = Tea.all
  end

  def show
    @tea = Tea.find_by_id(params[:tea_id])
  end
end