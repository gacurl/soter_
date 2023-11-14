class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      #Login the user and redirect to the user's show page
    else
      #Create an error message
      flash[:danger] = 'Invalid email/password combination'
    end
    render 'new', status: :unprocessable_entity
  end

  def destroy
  end
end
