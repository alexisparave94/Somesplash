class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = Category.all
  end

  def show
    @photos = @category.photos
    @comments = @category.comments
    @comment = Comment.new
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_path(@category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @category.update(category_params)
      redirect_to categories_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @category.destroy
    redirect_to categories_path, status: :see_other
  end

  private

  def category_params
    params.require(:category).permit(:name, :description, :cover)
  end

  def set_category
    @category = Category.find(params[:id])
  end
end
