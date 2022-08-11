class PhotosController < ApplicationController
  before_action :set_photo, only: %i[show edit update destroy]

  def show; end

  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  def create
    @photo = Photo.new(photo_params)
    @category = Category.find(@photo.category_id)
    if @photo.save
      redirect_to @photo.category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @category = @photo.category
  end

  def update
    @category = Category.find(@photo.category_id)
    if @photo.update(photo_params)
      redirect_to @photo.category
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category = @photo.category
    @photo.destroy
    redirect_to @category, status: :see_other
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :category_id)
  end

  def set_photo
    @photo = Photo.find(params[:id])
  end
end
