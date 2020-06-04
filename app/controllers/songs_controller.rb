class SongsController < ApplicationController

  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(Song_params)
    if @song.save
      redirect_to billboard_path #############
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])
    if @song.update(Song_params)
      redirect_to song_path ############
    else
      render :edit
    end
  end

  def destroy
    Song.find(params[:id]).destroy
    redirect_to songs_path
  end

  private
    def Song_params 
      params.require(:song).permit(:title, :album, :year_of_release, :plays)
    end
    
end
