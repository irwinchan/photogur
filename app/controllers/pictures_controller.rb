class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
    @comments = @picture.comments
    @new_comment = Comment.new
  end

  def new
    @picture = Picture.new
  end

  def create
    # make a new picture with what picture_params returns
    @picture = Picture.new(picture_params)
    if @picture.save
      # if save was successful go to index.html.erb
      redirect_to pictures_url
    else
      render :new
    end
  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update_attributes(picture_params)
      redirect_to "/pictures/#{@picture.id}"
    else
      render :edit
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url, :comment, comments_attributes: [:title, :user, :comments, :email])
  end
end
