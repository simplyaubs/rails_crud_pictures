class PicturesController < ApplicationController

  def index
    @picture = Picture.new
    @pictures = Picture.all
  end

  def create
    @picture = Picture.new(pictures_params)
    if @picture.save

      redirect_to pictures_path
    else
      render :index
    end
  end

  private
  def pictures_params
    params.require(:picture).permit(:content, :size)
  end

end