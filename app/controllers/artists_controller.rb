class ArtistsController < ApplicationController


  def index
    @artist = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(Artist_params)
    if @artist.save
      redirect_to artists_path #############
    else
      render :new
    end
  end

  def update
    @artist = Artist.find(params[:id])
    if @artist.update(Artist_params)
      redirect_to artists_path ############
    else
      render :edit
    end
  end

  def destroy
    Artist.find(params[:id]).destroy
    redirect_to artists_path
  end

  private
    def Artist_params 
      params.require(:artist).permit(:name, :genre, :subscribers, :debut)
    end

end
