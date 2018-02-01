import {RECEIVE_SESSION_ERRORS, CLEAR_SESSION_ERRORS} from '../actions/sessions_actions';

const sessionErrorsReducer = (oldState = [], action) => {
  switch (action.type) {
    case RECEIVE_SESSION_ERRORS:
      return action.data;
    case CLEAR_SESSION_ERRORS:
      return [];
    default:
      return oldState;
  }
};

export default sessionErrorsReducer;