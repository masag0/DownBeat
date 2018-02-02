
class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.includes(:artist).where(artist_id: params[:artist_id])
    render :index
  end

  def show
    @album = Album.includes(:songs, :artist).find_by(id: params[:id])
    render :show
  end

  def all
    @albums = Album.includes(:artist).all
    render :index
  end

end
