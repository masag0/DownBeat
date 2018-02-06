export const fetchPlaylists = (userId) => (
  $.ajax({
    method: 'GET',
    url: `api/users/${userId}/playlists`
  })
);

export const fetchPlaylist = (playlistId) => (
  $.ajax({
    method: 'GET',
    url: `api/playlists/${playlistId}`
  })
);

export const createPlaylist = (playlist) => (
  $.ajax({
    method: 'POST',
    url: 'api/playlists',
    data: {playlist: playlist}
  })
);

export const deletePlaylist = (playlistId) => (
  $.ajax({
    method: 'DELETE',
    url: `api/playlists/${playlistId}`
  })
);

export const updatePlaylist = (playlist) => (
  $.ajax({
    method: 'PATCH',
    url: `api/playlists/${playlist.id}`,
    data: {playlist}
  })
);




export const addSong = (playlist_id, song_id) => (
  $.ajax({
    method: 'POST',
    url: 'api/playlist_songs',
    data: {playlist_song: {playlist_id, song_id}}
  })
);

export const removeSong = (playlist_id, song_id) => (
  $.ajax({
    method: 'POST',
    url: `api/playlist_songs/delete`,
    data: {playlist_song: {playlist_id, song_id}}
  })
);


export const followPlaylist = (user_id, playlist_id) => (
  $.ajax({
    method: 'POST',
    url: `api/playlist_follows`,
    data: { playlist_follow: {playlist_id, user_id} }
  })
);

export const unfollowPlaylist = (user_id, playlist_id) => (
  $.ajax({
    method: 'POST',
    url: `api/playlist_follows/delete`,
    data: { playlist_follow: {playlist_id, user_id} }
  })
);













