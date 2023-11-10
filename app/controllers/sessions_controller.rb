class SessionsController < ApplicationController
  def new
  end
  
  def create
    if params[:email].present? == false && params[:password].present? == false
      redirect_to "/login"
    else
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to "/"
      else  
        redirect_to "/login"
        flash[:alert] = "Email or Password Incorrect"
      end
    end
  end

  def cart_login
    if params[:email].present? == false && params[:password].present? == false
      redirect_to "/login"
    else
      @user = User.find_by(email: params[:email])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to "/carts"
      else  
        redirect_to "/carts"
        flash[:alert] = "Email or Password Incorrect"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    session[:cart] = nil
    redirect_to "/"
  end
end