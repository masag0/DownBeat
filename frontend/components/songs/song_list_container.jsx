import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongList from './song_list';
import {getSongs} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => ({

  songs: lodash.values(state.entities.songs)
    .filter(el => el.album_id == ownProps.match.params.albumId)

});

const mapDispatchToProps = (dispatch, ownProps) => ({
  getSongs: () => dispatch(getSongs(ownProps.match.params.albumId))
});

export default connect(mapStateToProps, mapDispatchToProps)(SongList);
