class Api::SongsController < ApplicationController
  def index
    @songs = Song.where(album_id: params[:album_id])
    @songs.each do |song|
      album = Album.find_by(id: song.album_id)
      artist_id = Artist.find_by(id: album.artist_id).id
      song.artist_id = artist_id
    end
    render :index
  end

  def show
    @song = Song.find_by(id: params[:id])
    album = Album.find_by(id: @song.album_id)
    artist_id = Artist.find_by(id: album.artist_id).id
    @song.artist_id = artist_id
    render :show
  end
end
