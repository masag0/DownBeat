class Song < ApplicationRecord
  validates :title, :duration, :track_num, presence: true

  def artist_id
    self.album.artist_id
  end

  def genre
    self.album.artist.genre
  end

  belongs_to :album

  has_one :artist,
    through: :album,
    source: :artist
end
