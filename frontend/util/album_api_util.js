export const fetchAlbums = (artistId) => (
  $.ajax({
    method: 'GET',
    url: `api/artists/${artistId}/albums`
  })
);