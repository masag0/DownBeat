import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {withRouter} from 'react-router-dom';
import {removeSong} from '../../util/playlist_api_util';
import {playSong, addSongToQueue, addSongsToQueue} from '../../actions/playing_actions';
import {uiPlay, uiPause} from '../../actions/ui_actions';



const mapStateToProps = (state) => {
  return {
    nowPlaying: state.playing.song,
    paused: state.ui.paused
  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    removeSong: (playlist_id, song_id) => removeSong(playlist_id, song_id),
    playSong: (song) => dispatch(playSong(song)),
    addSongToQueue: (song) => dispatch(addSongToQueue(song)),
    addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs)),
    uiPlay: () => dispatch(uiPlay()),
    uiPause: () => dispatch(uiPause())
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SongListItem));