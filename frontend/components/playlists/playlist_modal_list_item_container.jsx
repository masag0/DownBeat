import React from 'react';
import { connect } from 'react-redux';
import {withRouter} from 'react-router-dom';
import PlaylistModalListItem from './playlist_modal_list_item';
import {addSong} from '../../util/playlist_api_util';



const mapStateToProps = (state, ownProps) => ({
  playlist: state.entities.playlists[ownProps.id]
});

const mapDispatchToProps = (dispatch, ownProps) => {
  return {
    addSong: (playlist_id, song_id) => addSong(playlist_id, song_id)
  };
};

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(PlaylistModalListItem));
