import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import ArtistIndex from './artist_index';
import {getAllArtists} from '../../actions/artists_actions';

const mapStateToProps = (state) => ({
  artists: lodash.values(state.entities.artists)
});

const mapDispatchToProps = (dispatch) => ({
  getAllArtists: () => dispatch(getAllArtists())
});

export default connect(mapStateToProps, mapDispatchToProps)(ArtistIndex);
