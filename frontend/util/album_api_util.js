export const fetchAlbums = (artistId) => (
  $.ajax({
    method: 'GET',
    url: `api/artists/${artistId}/albums`
  })
);

export const fetchAlbum = (albumId) => (
  $.ajax({
    method: 'GET',
    url: `api/albums/${albumId}`
  })
);

export const fetchAllAlbums = () => (
  $.ajax({
    method: 'GET',
    url: `api/albums`
  })
);