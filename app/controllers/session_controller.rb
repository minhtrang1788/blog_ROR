class SessionController < ApplicationController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:email])
      login(user)
      redirect_to user
    else
      flash.now[:'alert-danger']= 'user and pass is not correct'
  end
  def destroy
    log_out
    redirect_to root_urls
  end
end
