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