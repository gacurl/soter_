class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #Login the user and redirect to the user's show page
      reset_session #this resets the session BEFORE the user logs in preventing session fixation attack
      remember user
      log_in user
      redirect_to user
    else
      #Create an error message
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end
end
