class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
  @user = User.new(params[:user])
    auto_login(@user)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, :notice => "Account created"
    else
      render :new 
    end
  end
end

