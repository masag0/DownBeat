import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumDetail from './album_detail';
import {getAlbum} from '../../actions/albums_actions';

const mapStateToProps = (state, ownProps) => {
  return {album: state.entities.albums[ownProps.match.params.albumId]};
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAlbum: () => dispatch(getAlbum(ownProps.match.params.albumId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumDetail);
