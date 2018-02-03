import React from 'react';
import { connect } from 'react-redux';
import PlaylistForm from './playlist_form';
import {clearSessionErrors} from '../../actions/sessions_actions';
import {createPlaylist} from '../../actions/playlists_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  createPlaylist: (playlist) => dispatch(createPlaylist(playlist)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(PlaylistForm);