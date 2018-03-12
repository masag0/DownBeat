import React from 'react';
import { connect } from 'react-redux';
import Browse from './browse';
import lodash from 'lodash';
import { withRouter } from 'react-router-dom';
import { getPlaylist } from '../../actions/playlists_actions';
import {playSong, addSongsToQueue} from '../../actions/playing_actions';
// import { getFeaturedPlaylists, getGenrePlaylists } from '../../actions/playlists_actions';

const mapStateToProps = (state) => ({
  // featuredPlaylists: lodash.values(state.entities.playlists)
  //   .filter(el => el.featured == true )
  playlists: state.entities.playlists,
  songs: state.entities.songs
});

const mapDispatchToProps = (dispatch) => ({
  getPlaylist: (playlistId) => dispatch(getPlaylist(playlistId)),
  playSong: (song) => dispatch(playSong(song)),
  addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs))
  // getFeaturedPlaylists: () => dispatch(getFeaturedPlaylists()),
  // getGenrePlaylists: () => dispatch(getGenrePlaylists())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Browse));
