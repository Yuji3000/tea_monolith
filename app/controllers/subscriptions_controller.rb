class SubscriptionsController < ApplicationController
  def index
    @user = User.find_by_id(params[:user_id])
    @subscriptions = @user.subscriptions
  end

  def create
    tea = Tea.find_by_id(params[:tea_id])

    if current_user.subscriptions.where(tea_id: "#{params[:tea_id]}").count >= 1
      redirect_to "/"
      flash[:alert] = "Subscription already added"
    else 
      new_sub = Subscription.create(frequency_weeks: 4, user_id: current_user.id, tea_id: tea.id, status: "active")
      if new_sub.valid? 
        new_sub.save
        redirect_to "/"
        flash[:Message] = "Subscription Added"
      end
    end
  end
end

