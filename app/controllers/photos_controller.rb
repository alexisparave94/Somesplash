class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
  end
  
  def create
  end

  def edit
  end
end
