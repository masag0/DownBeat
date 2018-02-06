import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

import {fetchArtist} from './util/artist_api_util';
import {getArtist} from './actions/artists_actions';
import {getAlbums, getAlbum} from './actions/albums_actions';
import {receiveArtist} from './actions/artists_actions';
import {getSongs, getAllSongs} from './actions/songs_actions';
import {fetchResults} from './actions/search_actions';

document.addEventListener("DOMContentLoaded", () => {

  let store;
  if (window.currentUser) {
    const preloadedState = { session: { currentUser: window.currentUser } };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  window.store = store;
  window.fetchArtist = fetchArtist;
  window.getArtist = getArtist;
  window.receiveArtist = receiveArtist;
  window.getAlbums = getAlbums;
  window.getSongs = getSongs;
  window.getAllSongs = getAllSongs;
  window.fetchResults = fetchResults;


  ReactDOM.render(<Root store={store} />, document.getElementById('root'));
});