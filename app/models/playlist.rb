class Playlist < ApplicationRecord
  validates :user_id, :title, presence: true

  belongs_to :user

  has_many :playlist_follows

  has_many :playlist_songs


  has_many :songs,
    through: :playlist_songs,
    source: :song

  has_many :followers,
    through: :playlist_follows,
    source: :user

  def duration=(duration)
    @duration = duration
  end

  def duration
    self.duration = self.songs.reduce(0) { |acc, song| acc + song.duration }
  end

  def song_ids
    self.songs ||= []
    self.songs.map { |song| song.id }
  end

end
