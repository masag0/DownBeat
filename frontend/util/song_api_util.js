export const fetchSongs = (albumId) => (
  $.ajax({
    method: 'GET',
    url: `api/albums/${albumId}/songs`
  })
);

export const fetchPlaylistSongs = (playlistId) => (
  $.ajax({
    method: 'GET',
    url: `api/playlists/${playlistId}/songs`
  })
);

export const fetchAllSongs = () => (
  $.ajax({
    method: 'GET',
    url: `api/songs`
  })
);