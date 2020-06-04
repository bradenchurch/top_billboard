class BillboardsController < ApplicationController
  def index
    @billboards = Billboard.all
  end

  def show
    @billboard = Billboard.find(params[:id])
  end

  def new
    @billboard = Billboard.new
  end

  def edit
    @billboard = Billboard.find(params[:id])
  end

  def create
    @billboard = Billboard.new(billboard_params)
    if @billboard.save
      redirect_to @billboard
    else
      render :new
    end
  end

  def update
    @billboard = Billboard.find(params[:id])
    if @billboard.update(billboard_params)
      redirect_to billboards_path ############
    else
      render :edit
    end
  end

  def destroy
    Billboard.find(params[:id]).destroy
    redirect_to billboards_path
  end

  private
    def billboard_params 
      params.require(:billboard).permit(:artist, :most_played_song, :albums_sold)
    end
end

