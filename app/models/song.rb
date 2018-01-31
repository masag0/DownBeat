class Song < ApplicationRecord
  validates :title, :duration, :track_num, presence: true

  def artist_id
    self.album.artist_id
  end

  belongs_to :album
end
