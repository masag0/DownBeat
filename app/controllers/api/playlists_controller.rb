class Api::PlaylistsController < ApplicationController
  def index
    @playlists = Playlist.includes(:songs).where(id: params[:user_id])
    render :index
  end

  def show
    @playlist = Playlist.includes(:songs).find_by(id: params[:id])
    render :show
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      render :show
    else
      render json: @playlist.errors.full_messages, status: 422
    end
  end

  def update
    @playlist = Playlist.find_by(id: params[:id])
    if @playlist.update_attributes(playlist_params)
      render :show
    else
      render json: @playlist.errors.full_messages, status: 422
    end
  end

  def destroy
    @playlist = Playlist.find_by(id: params[:id])
    if @playlist
      @playlist.destroy
      render json: ""
    else
      render json: "Not Found", status: 404
    end
  end

  private

  def playlist_params
    params.require(:playlist).permit(:title, :user_id, :description, :genre, :img_url, :duration)
  end
end
