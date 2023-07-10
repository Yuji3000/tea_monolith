class TeasController < ApplicationController
  def index
    @teas = Tea.all
  end

  def show
    @tea = Tea.find_by_id(params[:tea_id])
  end
end