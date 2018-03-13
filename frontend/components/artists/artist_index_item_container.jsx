import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import ArtistIndexItem from './artist_index_item';
import {playSong, addSongsToQueue, pauseSong} from '../../actions/playing_actions';
import {getAlbum} from '../../actions/albums_actions';
import {getArtist} from '../../actions/artists_actions';


const mapStateToProps = (state, ownProps) => ({
  artist: state.entities.artists[ownProps.id],
  albums: state.entities.albums,
  songs: state.entities.songs
});

const mapDispatchToProps = (dispatch) => ({
  getAlbum: (albumId) => dispatch(getAlbum(albumId)),
  getArtist: (artistId) => dispatch(getArtist(artistId)),
  playSong: (song) => dispatch(playSong(song)),
  addSongsToQueue: (songs) => dispatch(addSongsToQueue(songs))
});

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(ArtistIndexItem));
