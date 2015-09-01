class PicturesController < ApplicationController
  def index
    @pictures = Picture.all
  end

  def show
    @picture = Picture.find(params[:id])
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

    render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
  end

  private
  def picture_params
    params.require(:picture).permit(:artist, :title, :url)
  end
end
