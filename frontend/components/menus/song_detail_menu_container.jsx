import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongDetailMenu from './song_detail_menu';

import {updatePlaylist} from '../../actions/playlist_actions';

const mapStateToProps = (state) => {
  return {

  };
};

const mapDispatchToProps = (dispatch) => {
  return {
    
  };
};

export default connect (mapStateToProps, mapDispatchToProps)(SongDetailMenu);