class Song < ApplicationRecord
  validates :title, :duration, presence: true

  attr_accessor :artist_id

  belongs_to :album
end
