import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistDetail from './playlist_detail';
import {getPlaylist} from '../../actions/playlists_actions';
import {getPlaylistSongs, getAllSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {
  const playlistId = ownProps.match.params.playlistId;
  return {
    playlist: state.entities.playlists[ownProps.match.params.playlistId],
    songs: lodash.values(state.entities.songs)
    // .filter(song => state.entities.playlists[playlistId].song_ids.includes(song.id))
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylist: () => dispatch(getPlaylist(ownProps.match.params.playlistId)),
  // getAllSongs: () => dispatch(getAllSongs())
  // getPlaylistSongs: () => dispatch(getPlaylistSongs(ownProps.match.params.playlistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistDetail);
