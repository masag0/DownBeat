import React from 'react';
import {RECEIVE_RESULTS, CLEAR_RESULTS} from '../actions/search_actions';
import lodash from 'lodash';


const initalState = {};


const playingReducer = (oldState = initalState, action) => {
  Object.freeze(oldState);
  let newState;
  switch (action.type) {
    case RECEIVE_RESULTS:
      // newState = lodash.merge({}, oldState);
      newState = action.data;
      return newState;

    case CLEAR_RESULTS:
      return {};

    default:
      return oldState;
  }
};

export default playingReducer;