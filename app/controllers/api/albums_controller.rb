class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.where(artist_id: params[:artist_id])
    render :index
  end

  def show
    @album = Album.find_by(id: params[:id])
    render :show
  end
end
