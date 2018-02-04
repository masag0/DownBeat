import React from 'react';
import {PLAY_SONG, ADD_SONG_TO_QUEUE, ADD_SONGS_TO_QUEUE} from '../actions/playing_actions';
import lodash from 'lodash';


const initalState = {
  song: {},
  queue: []
};

const playingReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case PLAY_SONG:
      newState = lodash.merge({}, oldState);
      newState['song'] = action.data;
      // newState.queue.
      return newState;

    case ADD_SONG_TO_QUEUE:
      newState = lodash.merge({}, oldState, action.data);
      return newState;

    case ADD_SONGS_TO_QUEUE:
      newState = lodash.merge({}, oldState, action.data);
      return newState;

    default:
      return oldState;
  }
};

export default playingReducer;