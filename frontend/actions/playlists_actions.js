import * as APIUtil from '../util/playlist_api_util';
import {receiveSongs} from './songs_actions';

export const RECEIVE_PLAYLIST = 'RECEIVE_PLAYLIST';
export const RECEIVE_PLAYLISTS = 'RECEIVE_PLAYLISTS';
export const ADD_SONG = 'ADD_SONG';
export const ADD_SONGS = 'ADD_SONGS';

export const receivePlaylist = (playlist) => ({
  type: RECEIVE_PLAYLIST,
  data: playlist
});

export const receivePlaylists = (playlists) => ({
  type: RECEIVE_PLAYLISTS,
  data: playlists
});

export const addSong = (song) => ({
  type: ADD_SONG,
  data: song
});

export const addSongs = (songs) => ({
  type: ADD_SONGS,
  data: songs
});




export const getPlaylists = (userId) => (dispatch) => {
  return APIUtil.fetchPlaylists(userId)
    .then(
      response => dispatch(receivePlaylists(response))
    );
};

export const getPlaylist = (playlistId) => (dispatch) => {
  return APIUtil.fetchPlaylist(playlistId)
    .then(
      response => {
        dispatch(receivePlaylist(response.playlist));
        dispatch(receiveSongs(response.songs));
      }
    );
};

// export const addSong = () => (dispatch) => {
//   return
// }






































