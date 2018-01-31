class Song < ApplicationRecord
  validates :title, :duration, :track_num, presence: true

  attr_accessor :artist_id

  # def artist_id=()
  #   album = Album.find_by(id: self.album_id)
  #   artist_id = Artist.find_by(id: album.artist_id).id
  #   @artist_id = artist_id
  #   @artist_id
  # end


  belongs_to :album
end
