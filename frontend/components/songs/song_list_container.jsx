import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongList from './song_list';

import {getSongs, getPlaylistSongs, getAllSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {

  if (ownProps.match.params.albumId) {

    return {
      songs: lodash.values(state.entities.songs)
      .filter(song => song.album.id == ownProps.match.params.albumId),
      nowPlaying: state.playing.song,
      // paused: state.playing.paused
    };

  } else if (ownProps.match.params.playlistId) {

    const playlistId = ownProps.match.params.playlistId;

    return {
      playlist: state.entities.playlists[playlistId],
      songs: lodash.values(state.entities.songs)
      .filter(song => state.entities.playlists[playlistId].song_ids.includes(song.id)),
      nowPlaying: state.playing.song,
      // paused: state.playing.paused
    };

  }

};

const mapDispatchToProps = (dispatch, ownProps) => {

  // if (ownProps.match.params.albumId) {
  //
  //   return {
  //     getSongs: () => dispatch(getSongs(ownProps.match.params.albumId))
  //   };
  //
  // } else if (ownProps.match.params.playlistId) {

    return {
      // getSongs: () => dispatch(getPlaylistSongs(ownProps.match.params.playlistId))
      getSongs: () => dispatch(getAllSongs())
    };

  // }

};

export default connect(mapStateToProps, mapDispatchToProps)(SongList);
