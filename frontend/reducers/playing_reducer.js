import React from 'react';
import {PLAY_SONG, ADD_SONG_TO_QUEUE, ADD_SONGS_TO_QUEUE, PAUSE_SONG} from '../actions/playing_actions';
import lodash from 'lodash';


const initalState = {
  song: {},
  queue: [],
  paused: true
};

const playingReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case PLAY_SONG:
      newState = lodash.merge({}, oldState);
      newState['song'] = action.data;
      newState['paused'] = false;
      // newState.queue.
      return newState;

    case PAUSE_SONG:
      newState = lodash.merge({}, oldState);
      newState['paused'] = true;
      return newState;

    case ADD_SONG_TO_QUEUE:
      newState = lodash.merge({}, oldState);
      newState.queue.concat([action.data]);
      return newState;

    case ADD_SONGS_TO_QUEUE:
      newState = lodash.merge({}, oldState);
      newState['queue'] = action.data;
      return newState;

    default:
      return oldState;
  }
};

export default playingReducer;