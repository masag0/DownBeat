class PlaylistFollow < ApplicationRecord
  validates :playlist_id, :user_id, presence: true
  validates :playlist_id, uniqueness: { scope: :user_id }
  belongs_to :playlist

  belongs_to :user
end
