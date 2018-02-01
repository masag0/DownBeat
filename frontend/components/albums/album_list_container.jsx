import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumList from './album_list';
import {getAlbums} from '../../actions/albums_actions';

const mapStateToProps = (state, ownProps) => ({
  albums: lodash.values(state.entities.albums)
    .filter(el => el.artist_id == ownProps.match.params.artistId)
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAlbums: (artistId) => dispatch(getAlbums(artistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumList);
