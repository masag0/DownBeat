class Api::SongsController < ApplicationController
  def index
    @songs = Song.includes(:album).where(album_id: params[:album_id])
    render :index
  end

  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end

  def playlist_song_index
    @playlist = Playlist.find_by(id: params[:playlist_id])
    @songs = Song.includes(:album).where(id: @playlist.song_ids)
    render :index
  end

  def all
    @songs = Song.all
    render :index
  end
end
