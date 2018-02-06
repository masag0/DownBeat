import * as APIUtil from '../util/playlist_api_util';
import {receiveSongs} from './songs_actions';

export const RECEIVE_PLAYLIST = 'RECEIVE_PLAYLIST';
export const RECEIVE_PLAYLISTS = 'RECEIVE_PLAYLISTS';
export const ADD_SONG = 'ADD_SONG';
export const ADD_SONGS = 'ADD_SONGS';
export const REMOVE_PLAYLIST = 'REMOVE_PLAYLIST';
export const RECEIVE_FOLLOW = 'RECEIVE_FOLLOW';
export const REMOVE_FOLLOW = 'REMOVE_FOLLOW';

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

export const removePlaylist = (playlistId) => ({
  type: REMOVE_PLAYLIST,
  data: playlistId
});

export const receiveFollow = (playlist) => ({
  type: RECEIVE_FOLLOW,
  data: playlist
});

export const removeFollow = (playlistId) => ({
  type: REMOVE_FOLLOW,
  data: playlistId
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

export const createPlaylist = (playlist) => (dispatch) => {
  return APIUtil.createPlaylist(playlist)
    .then(
      response => dispatch(receivePlaylist(response.playlist))
    );
};

export const deletePlaylist = (playlistId) => (dispatch) => {
  return APIUtil.deletePlaylist(playlistId)
    .then(
      dispatch(removePlaylist(playlistId))
    );
};

export const updatePlaylist = (playlist) => (dispatch) => {
  return APIUtil.updatePlaylist(playlist)
    .then(
      response => dispatch(receivePlaylist(response.playlist))
    );
};


export const followPlaylist = (user_id, playlist_id) => (dispatch) => {
  return APIUtil.followPlaylist(user_id, playlist_id)
    .then(
      response => dispatch(receiveFollow(response.playlist))
    );
};

export const unfollowPlaylist = (user_id, playlist_id) => (dispatch) => {
  return APIUtil.unfollowPlaylist(user_id, playlist_id)
    .then(
      dispatch(removeFollow(playlist_id))
    );
};




































