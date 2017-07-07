class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to root_path
      else
      render :new
    end
  end

  # def session_params
  #   params.require(:session).permit(
  #     :email,
  #     :password
  #   )
  # end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end