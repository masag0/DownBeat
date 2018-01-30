class Api::ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    render :index
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    render :show
  end
end
