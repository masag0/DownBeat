import React from 'react';
import { combineReducers } from 'redux';
import entitiesReducer from './entitiesReducer';

const rootReducer = combineReducers({
  entities: entitiesReducer
});


export default rootReducer;