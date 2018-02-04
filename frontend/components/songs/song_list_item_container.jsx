import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {withRouter} from 'react-router-dom';
import {removeSong} from '../../util/playlist_api_util';
import {playSong} from '../../actions/playing_actions';



const mapStateToProps = (state) => {
  return {

  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    removeSong: (playlist_id, song_id) => removeSong(playlist_id, song_id),
    playSong: (song) => dispatch(playSong(song))
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SongListItem));