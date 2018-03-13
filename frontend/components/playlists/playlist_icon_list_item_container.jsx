import React from 'react';
import { connect } from 'react-redux';
import PlaylistIconListItem from './playlist_icon_list_item';
import lodash from 'lodash';
import { withRouter } from 'react-router-dom';
import { getPlaylist } from '../../actions/playlists_actions';
import {playSong, addSongsToQueue, pauseSong} from '../../actions/playing_actions';

const mapStateToProps = (state) => ({
  playlists: state.entities.playlists,
  songs: state.entities.songs
});

const mapDispatchToProps = (dispatch) => ({
  getPlaylist: (playlistId) => dispatch(getPlaylist(playlistId)),
  playSong: (song) => dispatch(playSong(song)),
  addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistIconListItem);
