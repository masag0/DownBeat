import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongList from './song_list';
import {getSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => {
  // if (ownProps)
  return {songs: lodash.values(state.entities.songs)};

};

const mapDispatchToProps = (dispatch) => ({
  getSongs: () => dispatch(getSongs())
});

export default connect(mapStateToProps, mapDispatchToProps)(SongList);
