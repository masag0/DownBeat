class Api::PlaylistSongsController < ApplicationController

  def create
    @playlist_song = PlaylistSong.new(playlist_song_params)
    render :show
  end

  def destroy
    @playlist_song = PlaylistSong.find_by(id: params[:id])
    render json: "" if @playlist_song.destroy
  end

  private
  def playlist_song_params
    params.require(:playlist_song).permit(:song_id, :playlist_id)
  end
end
