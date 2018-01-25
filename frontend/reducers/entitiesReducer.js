import React from 'react';
import { combineReducers } from 'redux';
import songsReducer from './songsReducer';

const entitiesReducer = combineReducers({
  songs: songsReducer
});


export default entitiesReducer;