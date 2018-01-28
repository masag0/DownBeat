import React from 'react';
import { combineReducers } from 'redux';
import songsReducer from './songs_reducer';

const entitiesReducer = combineReducers({
  songs: songsReducer
});


export default entitiesReducer;