import * as APIUtil from '../util/album_api_util';

export const RECEIVE_ALBUM = 'RECEIVE_ALBUM';
export const RECEIVE_ALBUMS = 'RECEIVE_ALBUMS';

export const receiveAlbum = (album) => ({
  method: RECEIVE_ALBUM,
  data: album
});

export const receiveAlbums = (albums) => ({
  method: RECEIVE_ALBUMS,
  data: albums
});




export const getAlbums = (artistId) => (dispatch) => {
  return APIUtil.fetchAlbums(artistId)
    .then(
      response => dispatch(receiveAlbums(response))
    );
};