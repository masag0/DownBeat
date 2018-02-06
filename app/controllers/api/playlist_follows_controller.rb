class Api::PlaylistFollowsController < ApplicationController
  def create
    @playlist_follow = PlaylistFollow.new(playlist_follow_params)
    if @playlist_follow.save
      render json: ""
    else
      render json: @playlist_follow.errors.full_messages, status: 422
    end
  end

  def delete_follow
    @playlist_follow = PlaylistFollow.find_by(user_id: params[:playlist_follow][:user_id], playlist_id: params[:playlist_follow][:playlist_id])
    if @playlist_follow && @playlist_follow.destroy
      render json: ""
    else
      render json: "Not found", status: 404
    end
  end

  private
  def playlist_follow_params
    params.require(:playlist_follow).permit(:user_id, :playlist_id)
  end
end
