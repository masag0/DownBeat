import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistDetail from './playlist_detail';
import {getPlaylist, deletePlaylist} from '../../actions/playlists_actions';
import {getPlaylistSongs, getAllSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {
  const playlistId = ownProps.match.params.playlistId;
  return {
    playlist: state.entities.playlists[ownProps.match.params.playlistId],
    songs: lodash.values(state.entities.songs)
    .filter(song => state.entities.playlists[playlistId].song_ids.includes(song.id)),
    currentUser: state.session.currentUser
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylist: (playlistId) => dispatch(getPlaylist(playlistId)),
  deletePlaylist: (playlistId) => dispatch(deletePlaylist(playlistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistDetail);
