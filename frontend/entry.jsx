import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';
import Root from './components/root';

import {fetchArtist} from './util/artist_api_util';
import {getArtist} from './actions/artists_actions';
import {getAlbums} from './actions/albums_actions';
import {receiveArtist} from './actions/artists_actions';
import {getSongs} from './actions/songs_actions';

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

  ReactDOM.render(<Root store={store} />, document.getElementById('root'));
});