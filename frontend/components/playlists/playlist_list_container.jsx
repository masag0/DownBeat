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
    // playlists: lodash.values(state.entities.playlists)
    // .filter(el => el.user_id == state.session.currentUser.id),
    playlists: state.entities.playlists,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    getPlaylists: () => dispatch(getPlaylists(currentUser.id)),
    // getPlaylistSongs: (id) => dispatch(getPlaylistSongs(id))
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistList);
