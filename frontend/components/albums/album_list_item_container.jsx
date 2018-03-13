import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import { withRouter } from 'react-router-dom';
import AlbumListItem from './album_list_item';
import {getAlbum} from '../../actions/albums_actions';
import {playSong, addSongsToQueue, pauseSong} from '../../actions/playing_actions';


const mapStateToProps = (state, ownProps) => {
  let album;
  if (state.entities.albums[ownProps.id]) {
    album = state.entities.albums[ownProps.id];
  } else {
    album = state.search.albums[ownProps.id];
  }
  return ({
    album: album,
    songs: state.entities.songs
  });
};

const mapDispatchToProps = (dispatch) => ({
  getAlbum: (albumId) => dispatch(getAlbum(albumId)),
  playSong: (song) => dispatch(playSong(song)),
  addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(AlbumListItem));
