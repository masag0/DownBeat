json.(user, :id, :username)

json.set! 'created_playlists' do
  user.playlists.each do |playlist|
    json.set! playlist.id do
      json.(playlist, :id, :title, :genre, :description, :user_id, :song_ids, :duration, :img_url)
    end
  end
end

json.set! 'following_playlists' do
  user.following_playlists.each do |playlist|
    json.set! playlist.id do
      json.(playlist, :id, :title, :genre, :description, :user_id, :song_ids, :duration, :img_url)
    end
  end
end