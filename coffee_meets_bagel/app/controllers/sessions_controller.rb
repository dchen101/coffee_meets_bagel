class SessionsController < ApplicationController
  def create
    user = User.where(username: params[:username]).first
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user
      end
    else
      redirect_to root_path
    end
  end
end
