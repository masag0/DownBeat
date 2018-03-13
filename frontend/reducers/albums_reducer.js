import React from 'react';
import {RECEIVE_ALBUM, RECEIVE_ALBUMS} from '../actions/albums_actions';
import lodash from 'lodash';


const initalState = {};

const albumsReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case RECEIVE_ALBUM:
      newState = lodash.merge({}, oldState);
      newState[action.data.id] = action.data;
      return newState;

    case RECEIVE_ALBUMS:
      newState = lodash.merge({}, oldState, action.data);
      return newState;

    default:
      return oldState;
  }
};

export default albumsReducer;