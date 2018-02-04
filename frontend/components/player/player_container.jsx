import React from 'react';
import { connect } from 'react-redux';
import Player from './player';
import {playSong} from '../../actions/playing_actions';

const mapStateToProps = (state) => ({
  playing: state.playing,
  nowPlaying: state.playing.song,
  queue: state.playing.queue
});

const mapDispatchToProps = (dispatch) => ({
  playSong: (song) => dispatch(playSong(song))
});

export default connect(mapStateToProps, mapDispatchToProps)(Player);