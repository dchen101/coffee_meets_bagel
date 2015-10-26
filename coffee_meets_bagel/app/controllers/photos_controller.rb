class PhotosController < ApplicationController

  def create
    photo = Photo.new(user_id: params[:user_id], image: params[:photo][:image])
    if photo.save
      redirect_to user_photo_path(photo.user_id, photo.id)
    else
      redirect_to user_path(session[:user_id])
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def like
    Like.create(photo_id: params[:id], user_id: session[:user_id])
    redirect_to user_path(session[:user_id])
  end

end
