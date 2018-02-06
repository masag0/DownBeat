import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SearchIndex from './search_index';
import {getPlaylist, deletePlaylist} from '../../actions/playlists_actions';
import {getPlaylistSongs, getAllSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    playlists: state.entities.playlists,
    artists: state.entities.artists,
    albums: state.entities.albums,
    songs: state.entities.songs,
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylist: (playlistId) => dispatch(getPlaylist(playlistId)),
  deletePlaylist: (playlistId) => dispatch(deletePlaylist(playlistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(SearchIndex);
