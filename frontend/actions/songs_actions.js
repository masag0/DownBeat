 import * as APIUtil from '../util/song_api_util';

export const RECEIVE_SONG = 'RECEIVE_SONG';
export const RECEIVE_SONGS = 'RECEIVE_SONGS';

export const receiveSong = (song) => ({
  type: RECEIVE_SONG,
  data: song
});

export const receiveSongs = (songs) => ({
  type: RECEIVE_SONGS,
  data: songs
});




export const getSongs = (albumId) => (dispatch) => {
  return APIUtil.fetchSongs(albumId)
    .then(
      response => dispatch(receiveSongs(response))
    );
};

export const getPlaylistSongs = (playlistId) => (dispatch) => {
  return APIUtil.fetchPlaylistSongs(playlistId)
    .then(
      response => dispatch(receiveSongs(response))
    );
};

export const getSong = (songId) => (dispatch) => {
  return APIUtil.fetchSongs(songId)
    .then(
      response => dispatch(receiveSongs(response))
    );
};