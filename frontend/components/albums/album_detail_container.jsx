import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumDetail from './album_detail';
import {getAlbum} from '../../actions/albums_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    album: state.entities.albums[ownProps.match.params.albumId],
    songs: lodash.values(state.entities.songs)
      .filter(song => song.album.id == ownProps.match.params.albumId)
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAlbum: (albumId) => dispatch(getAlbum(albumId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumDetail);
