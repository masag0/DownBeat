import React from 'react';
import { connect } from 'react-redux';
import lodash from 'lodash';
import AlbumDetail from './album_detail';
import {getAlbum} from '../../actions/albums_actions';
import {playSong, addSongsToQueue} from '../../actions/playing_actions';

const mapStateToProps = (state, ownProps) => {
  return {
    album: state.entities.albums[ownProps.match.params.albumId],
    songs: state.entities.songs
      
  };
};

const mapDispatchToProps = (dispatch, ownProps) => ({
  getAlbum: (albumId) => dispatch(getAlbum(albumId)),
  playSong: (song) => dispatch(playSong(song)),
  addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs))
});

export default connect(mapStateToProps, mapDispatchToProps)(AlbumDetail);
