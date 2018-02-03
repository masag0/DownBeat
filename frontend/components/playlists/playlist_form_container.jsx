import React from 'react';
import { connect } from 'react-redux';
import PlaylistForm from './playlist_form';
import {clearSessionErrors} from '../../actions/sessions_actions';
import {createPlaylist, updatePlaylist} from '../../actions/playlists_actions';

const mapStateToProps = (state, ownProps) => {
  let formType;
  if (ownProps.playlist) {
    formType = "update";
  } else {
    formType = "create";
  }
  return {
    currentUser: state.session.currentUser,
    formType
  };
};

const mapDispatchToProps = (dispatch) => ({
  createPlaylist: (playlist) => dispatch(createPlaylist(playlist)),
  updatePlaylist: (playlist) => dispatch(updatePlaylist(playlist)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistForm);