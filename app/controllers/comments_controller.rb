class CommentsController < ApplicationController
  def create
    @article = Photo.find(params[:photo_id])
    @comment = @photo.comments.create(comment_params)
    redirect_to article_path(@article)
  end
end
