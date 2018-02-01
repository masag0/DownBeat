import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumListItem from './album_list_item';
import {getAlbum} from '../../actions/albums_actions';

const mapStateToProps = (state, ownProps) => {
  return {album: state.entities.artists[ownProps.match.params.albumId]};
};

const mapDispatchToProps = (dispatch) => ({
  getArtist: (albumId) => dispatch(getAlbum(albumId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumListItem);
