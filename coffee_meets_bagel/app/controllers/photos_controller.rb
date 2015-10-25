class PhotosController < ApplicationController

  def create
    p '*' * 100
    p params[:image]
    p '*' * 100
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
end
