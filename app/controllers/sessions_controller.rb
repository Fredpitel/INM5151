class SessionsController < ApplicationController
  protect_from_forgery
  def new
  end



  def login
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      give_token
    else
      redirect_to home_url
    end
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.password == params[:password]
      render html: 'ok'
    else
      render html: 'not ok'
    end
  end

  def destroy
  end
end