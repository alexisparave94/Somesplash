class CommentsController < ApplicationController
  # POST photos/:photo_id/comments
  # POST categories/:category_id/comments
  def create
    if params[:photo_id]
      @commentable = Photo.find(params[:photo_id])
      @photo = @commentable
    elsif params[:category_id]
      @commentable = Category.find(params[:category_id])
      @category = @commentable
      @photos = @commentable.photos
    end

    @comments = @commentable.comments
    @comment = Comment.new(comment_params)
    @comment.commentable = @commentable

    if @comment.save
      redirect_to @commentable
    elsif params[:photo_id]
      render "photos/show", status: :unprocessable_entity
    elsif params[:category_id]
      render "categories/show", status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
