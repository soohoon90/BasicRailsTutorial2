class SessionsController < ApplicationController
  def new
  end

  def create
    user = Users.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # sign in
      sign_in user
      redirect_to user
    else
      # error
      flash.now[:error] = "invalid email / password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
