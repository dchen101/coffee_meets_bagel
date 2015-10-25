class UsersController < ApplicationController
  def create
    user = User.new(username: params[:username], password: params[:password])
    if user.save
      session[:user_id] = user.id
      redirect_to user
    else
      redirect_to root_path
    end
  end

  def show
    @user = User.find(params[:id])
    @photo = Photo.new
  end

end
