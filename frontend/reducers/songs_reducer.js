import React from 'react';
import {RECEIVE_SONG, RECEIVE_SONGS} from '../actions/songs_actions';
import lodash from 'lodash';


const initalState = {};

const songsReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case RECEIVE_SONG:
      newState = lodash.merge({}, oldState);
      newState[action.data.id] = action.data;
      return newState;

    case RECEIVE_SONGS:
      newState = lodash.merge({}, oldState, action.data);
      return newState;

    default:
      return oldState;
  }
};

export default songsReducer;