class ArtworksController < ApplicationController
  def index
    @artwork = Artwork.all
  end
 
  def show
    @artwork = Artwork.find(params[:id])
  end
 
  def new
    @artwork = Artwork.new
  end
 
  def edit
    @artwork = Artwork.find(params[:id])
  end
 
  def create
    @artwork = Artwork.new(artwork_params)
 
    if @artwork.save
      redirect_to @artwork
    else
      render 'new'
    end
  end
 
  def update
    @artwork = Artwork.find(params[:id])
 
    if @artwork.update(artwork_params)
      redirect_to @artwork
    else
      render 'edit'
    end
  end
 
  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
 
    redirect_to artwork_path
  end
 
  private
    def artwork_params
      params.require(:artwork).permit(:title, :artist, :description, :media, :date_made, :dimension, :suggest_price)
    end
end
