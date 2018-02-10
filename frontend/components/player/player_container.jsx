import React from 'react';
import { connect } from 'react-redux';
import Player from './player';
import {playSong, pauseSong} from '../../actions/playing_actions';
import {uiPlay, uiPause} from '../../actions/ui_actions';



const mapStateToProps = (state) => ({
  playing: state.playing,
  nowPlaying: state.playing.song,
  queue: state.playing.queue
});

const mapDispatchToProps = (dispatch) => ({
  playSong: (song) => dispatch(playSong(song)),
  pauseSong: (song) => dispatch(pauseSong(song)),
  uiPlay: () => dispatch(uiPlay()),
  uiPause: () => dispatch(uiPause())
});

export default connect(mapStateToProps, mapDispatchToProps)(Player);