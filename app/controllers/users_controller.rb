class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "welcome to the new app 2"
      redirect_to @user
    else
      render "new"
    end
  end
end 
