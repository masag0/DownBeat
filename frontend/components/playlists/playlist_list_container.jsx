import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistList from './playlist_list';
import {getPlaylists} from '../../actions/playlists_actions';
import {getPlaylistSongs} from '../../actions/songs_actions';

let currentUser;

const mapStateToProps = (state, ownProps) => {
  currentUser = state.session.currentUser;
  return {
    playlists: state.entities.playlists,
    currentUser: state.session.currentUser,
    createdPlaylists: state.session.currentUser.created_playlists,
    followingPlaylists: state.session.currentUser.following_playlists
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    getPlaylists: () => dispatch(getPlaylists(currentUser.id)),
    // getPlaylistSongs: (id) => dispatch(getPlaylistSongs(id))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistList);
