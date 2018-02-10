import React from 'react';
import {PAUSE, PLAY} from '../actions/ui_actions';
import lodash from 'lodash';


const initalState = {paused: true};

const songsReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case PAUSE:
      newState = lodash.merge({}, oldState);
      newState['paused'] = true;
      return newState;

    case PLAY:
      newState = lodash.merge({}, oldState);
      newState['paused'] = false;
      return newState;

    default:
      return oldState;
  }
};

export default songsReducer;