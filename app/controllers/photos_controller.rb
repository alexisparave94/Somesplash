class PhotosController < ApplicationController
  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  def create
    @photo = Photo.new(photo_params)
    @category = Category.find(@photo.category_id)
    if @photo.save
      redirect_to category_path(@photo.category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def update
    @photo = Photo.find(params[:id])
    @category = Category.find(@photo.category_id)
    if @photo.update(photo_params)
      redirect_to category_path(@photo.category)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :category_id)
  end
end
