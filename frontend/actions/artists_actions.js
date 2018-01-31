import * as APIUtil from '../util/artist_api_util';


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
        dispatch(receiveArtist(response));
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















