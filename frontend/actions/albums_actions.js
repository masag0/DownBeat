import * as APIUtil from '../util/album_api_util';
import {receiveSongs} from './songs_actions';

export const RECEIVE_ALBUM = 'RECEIVE_ALBUM';
export const RECEIVE_ALBUMS = 'RECEIVE_ALBUMS';

export const receiveAlbum = (album) => ({
  type: RECEIVE_ALBUM,
  data: album
});

export const receiveAlbums = (albums) => ({
  type: RECEIVE_ALBUMS,
  data: albums
});




export const getAlbums = (artistId) => (dispatch) => {
  return APIUtil.fetchAlbums(artistId)
    .then(
      response => dispatch(receiveAlbums(response))
    );
};

export const getAlbum = (albumId) => (dispatch) => {
  return APIUtil.fetchAlbum(albumId)
    .then(
      response => {
        dispatch(receiveAlbum(response.album));
        dispatch(receiveSongs(response.songs));
      }
    );
};

export const getAllAlbums = () => (dispatch) => {
  return APIUtil.fetchAllAlbums()
    .then(
      response => dispatch(receiveAlbums(response))
    );
};