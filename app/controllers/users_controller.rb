class UsersController < ApplicationController
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "welcome to the new app 2"
      redirect_to @user
    else
      render "new"
    end
  end
end
