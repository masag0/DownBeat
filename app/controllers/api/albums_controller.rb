class Api::AlbumsController < ApplicationController
  def index
    @albums = Album.where(artist_id: params[:artist_id])
    render :index
  end

  def show
    @album = Album.includes(:songs).find_by(id: params[:id])
    songs = @album.songs.includes(:duration)
    @album.duration = songs.reduce(0) { |acc, song| acc + song.duration }
    render :show
  end
end
