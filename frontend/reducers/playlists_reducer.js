import React from 'react';
import {RECEIVE_PLAYLIST, RECEIVE_PLAYLISTS, REMOVE_PLAYLIST} from '../actions/playlists_actions';
import lodash from 'lodash';


const initalState = {};

const playlistsReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case RECEIVE_PLAYLIST:
      newState = lodash.merge({}, oldState);
      newState[action.data.id] = action.data;
      return newState;

    case RECEIVE_PLAYLISTS:
      newState = lodash.merge({}, oldState, action.data);
      return newState;

    case REMOVE_PLAYLIST:
    console.log('reducer');
      newState = lodash.merge({}, oldState);
      console.log(newState[action.data]);
      delete newState[action.data];
      return newState;

    default:
      return oldState;
  }
};

export default playlistsReducer;