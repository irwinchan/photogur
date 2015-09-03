class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def create
    @picture = Picture.find(params[:picture_id])
    @comment = @picture.comments.create(comments_params)
    redirect_to pictures_url
  end

  private
  def comments_params
    params.require(:comment).permit(:user, :title, :email, :comment, :picture_id)
  end
end