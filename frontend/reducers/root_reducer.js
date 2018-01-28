import React from 'react';
import { combineReducers } from 'redux';
import entitiesReducer from './entities_reducer';
import sessionsReducer from './sessions_reducer';

const rootReducer = combineReducers({
  entities: entitiesReducer,
  session: sessionsReducer
});


export default rootReducer;