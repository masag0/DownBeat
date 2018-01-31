class Api::SongsController < ApplicationController
  def index
    @songs = Song.includes(:album).where(album_id: params[:album_id])
    render :index
  end

  def show
    @song = Song.find_by(id: params[:id])
    render :show
  end
end
