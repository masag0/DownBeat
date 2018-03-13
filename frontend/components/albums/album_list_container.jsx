import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumList from './album_list';
import {getAlbums, getAllAlbums, getAlbum} from '../../actions/albums_actions';
import { withRouter } from 'react-router-dom';

const mapStateToProps = (state, ownProps) => {
  if (ownProps.match.params.artistId) {
    return {albums: lodash.values(state.entities.albums)
    .filter(el => el.artist_id == ownProps.match.params.artistId)};
  } else {
    return {albums: lodash.values(state.entities.albums)};
  }
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAlbums: (artistId) => dispatch(getAlbums(artistId)),
  getAllAlbums: () => dispatch(getAllAlbums())
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(AlbumList));
