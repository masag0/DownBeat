import * as APIUtil from '../util/artist_api_util';
import {receiveAlbums} from './albums_actions';

export const RECEIVE_ARTIST = 'RECEIVE_ARTIST';
export const RECEIVE_ALL_ARTISTS = 'RECEIVE_ALL_ARTISTS';

export const receiveArtist = (artist) => ({
  type: RECEIVE_ARTIST,
  data: artist
});

export const receiveAllArtists = (artists) => ({
  type: RECEIVE_ALL_ARTISTS,
  data: artists
});



export const getArtist = (artistId) => (dispatch) => {
  return APIUtil.fetchArtist(artistId)
    .then(
      response => {
        dispatch(receiveArtist(response.artist));
        dispatch(receiveAlbums(response.albums));
      }
    );
};
export const getAllArtists = () => (dispatch) => {
  return APIUtil.fetchArtists()
    .then(
      response => {
        dispatch(receiveAllArtists(response));
      }
    );
};















