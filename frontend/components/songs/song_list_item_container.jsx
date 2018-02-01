import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import SongListItem from './song_list_item';
import {getSong} from '../../actions/songs_actions';
import {getArtist} from '../../actions/artists_actions';
import {getAlbum} from '../../actions/albums_actions';
import {withRouter} from 'react-router-dom';

const mapStateToProps = (state, ownProps) => {
  return {song: ownProps.song};
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getSong: () => dispatch(getSong(ownProps.song.id))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(SongListItem));
