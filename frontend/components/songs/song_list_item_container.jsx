import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {addSong} from '../../util/playlist_api_util';
import {withRouter} from 'react-router-dom';


const mapStateToProps = (state) => {
  return {

  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    addSong: (playlist_id, song_id) => addSong(playlist_id, song_id)
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SongListItem));