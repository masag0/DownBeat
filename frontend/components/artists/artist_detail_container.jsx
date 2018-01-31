import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import ArtistDetail from './artist_detail';
import {getArtist} from '../../actions/artists_actions';

const mapStateToProps = (state, ownProps) => {
  return {artist: state.entities.artists[ownProps.match.params.artistId]};
};

const mapDispatchToProps = (dispatch) => ({
  getArtist: (artistId) => dispatch(getArtist(artistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(ArtistDetail);
