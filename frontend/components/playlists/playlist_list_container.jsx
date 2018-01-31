import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistList from './playlist_list';
import {getPlaylists} from '../../actions/playlists_actions';

const mapStateToProps = (state, ownProps) => ({
  playlists: lodash.values(state.entities.playlists)
    .filter(el => el.artist_id == ownProps.match.params.artistId)
});

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylists: () => dispatch(getPlaylists(ownProps.match.params.artistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistList);
