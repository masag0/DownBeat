class Album < ApplicationRecord
  validates :title, :year, :artist_id, presence: true

  belongs_to :artist

  def duration
    self.duration = self.songs.reduce(0) { |acc, song| acc + song.duration }
  end
  
  has_many :songs
end
