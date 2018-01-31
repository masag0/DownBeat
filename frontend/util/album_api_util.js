export const fetchAlbums = (artistId) => (
  $.ajax({
    method: 'GET',
    url: `api/albums/${artistId}/albums`
  })
);