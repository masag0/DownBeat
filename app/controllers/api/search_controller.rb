class Api::SearchController < ApplicationController

  def index
    @songs = Song.where('lower(title) LIKE ?', "%#{params[:query].downcase}%")
    @playlists = Playlist.where('lower(title) LIKE ?', "%#{params[:query].downcase}%")
    @albums = Album.where('lower(title) LIKE ?', "%#{params[:query].downcase}%")
    @artists = Artist.where('lower(name) LIKE ?', "%#{params[:query].downcase}%")
    render :index
  end
end
