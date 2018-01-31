import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumList from './album_list';
import {getAlbums} from '../../actions/artists_actions';

const mapStateToProps = (state) => ({
  albums: lodash.values(state.entities.albums)
});

const mapDispatchToProps = (dispatch) => ({
  getAlbums: () => dispatch(getAlbums())
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumList);
