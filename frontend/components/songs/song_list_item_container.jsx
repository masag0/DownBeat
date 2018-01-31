import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {getSong} from '../../actions/songs_actions';

const mapStateToProps = (state, ownProps) => ({

  song: state.entities.songs[ownProps.songId],
  artist: state.entities.artists[ownProps.artistId],
  album: state.entities.albums[ownProps.albumId]

});

const mapDispatchToProps = (dispatch, ownProps) => ({
  getSong: () => dispatch(getSong(ownProps.songId))
});

export default connect(mapStateToProps, mapDispatchToProps)(SongListItem);
