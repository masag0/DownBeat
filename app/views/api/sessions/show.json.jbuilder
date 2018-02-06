json.partial! 'api/users/user', user: @user

json.set! 'following_playlists' do
  @user.following_playlists.each do |playlist|
    json.set! playlist.id do
      json.partial! 'api/playlists/playlist', playlist: playlist
    end
  end
end