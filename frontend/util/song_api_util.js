export const fetchSongs = (albumId) => (
  $.ajax({
    method: 'GET',
    url: `api/albums/${albumId}/songs`
  })
);