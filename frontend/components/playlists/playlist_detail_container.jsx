import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistDetail from './playlist_detail';
import {getPlaylist, deletePlaylist, followPlaylist, unfollowPlaylist} from '../../actions/playlists_actions';
import {getPlaylistSongs, getAllSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {
  const playlistId = ownProps.match.params.playlistId;
  return {
    playlist: state.entities.playlists[ownProps.match.params.playlistId],
    songs: state.entities.songs,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylist: (playlistId) => dispatch(getPlaylist(playlistId)),
  deletePlaylist: (playlistId) => dispatch(deletePlaylist(playlistId)),
  followPlaylist: (userId, playlistId) => dispatch(followPlaylist(userId, playlistId)),
  unfollowPlaylist: (userId, playlistId) => dispatch(unfollowPlaylist(userId, playlistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistDetail);
