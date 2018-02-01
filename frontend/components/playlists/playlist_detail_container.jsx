import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import PlaylistDetail from './playlist_detail';
import {getPlaylist} from '../../actions/playlists_actions';

const mapStateToProps = (state, ownProps) => {
  return {playlist: state.entities.playlists[ownProps.match.params.playlistId]};
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getPlaylist: () => dispatch(getPlaylist(ownProps.match.params.playlistId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistDetail);
