import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumListItem from './album_list_item';
import {getAlbum} from '../../actions/albums_actions';

const mapStateToProps = (state, ownProps) => {
  if (ownProps.match.params.albumId) {
    return {artist: state.entities.artists[ownProps.match.params.albumId]};
  } else {
    return {album: state.entities.albums[ownProps.id]};
  }
};

const mapDispatchToProps = (dispatch) => ({
  getArtist: (albumId) => dispatch(getAlbum(albumId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumListItem);
