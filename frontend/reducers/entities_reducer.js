import React from 'react';
import { combineReducers } from 'redux';
import songsReducer from './songs_reducer';
import artistsReducer from './artists_reducer';
import albumsReducer from './albums_reducer';

const entitiesReducer = combineReducers({
  artists: artistsReducer,
  albums: albumsReducer,
  songs: songsReducer
});


export default entitiesReducer;