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

  def show
    @picture = Picture.find(params[:id])
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    @picture.update_attributes!(pictures_params)

    redirect_to pictures_path
  end

  private
  def pictures_params
    params.require(:picture).permit(:content, :size)
  end

end