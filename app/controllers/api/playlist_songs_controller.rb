class Api::PlaylistSongsController < ApplicationController

  def create
    @playlist_song = PlaylistSong.new(playlist_song_params)
    if @playlist_song.save
      render :show
    else
      render @playlist_song.errors.full_messages, status: 422
    end
  end

  def destroy
    @playlist_song = PlaylistSong.find_by(id: params[:id])
    if @playlist_song.destroy
      render json: ""
    else
      render "Not Found", status: 404
    end
  end

  private
  def playlist_song_params
    params.require(:playlist_song).permit(:song_id, :playlist_id)
  end
end
