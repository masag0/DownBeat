import React from 'react';
import {RECEIVE_ARTIST, RECEIVE_ALL_ARTISTS} from '../actions/artists_actions';
import lodash from 'lodash';

const initalState = {};

const artistsReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;

  switch (action.type) {
    case RECEIVE_ALL_ARTISTS:
    // newState = lodash.merge({}, oldState, action.data);
    // return newState;
    return action.data;

    case RECEIVE_ARTIST:
      newState = lodash.merge({}, oldState);
      newState[action.data.id] = action.data;
      return newState;



    default:
      return oldState;
  }
};

export default artistsReducer;