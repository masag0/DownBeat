import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {withRouter} from 'react-router-dom';
import {removeSong} from '../../util/playlist_api_util';



const mapStateToProps = (state) => {
  return {

  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    removeSong: (playlist_id, song_id) => removeSong(playlist_id, song_id)
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SongListItem));