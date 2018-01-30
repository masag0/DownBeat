class Song < ApplicationRecord
  validates :title, :duration, presence: true

  belongs_to :album
end
