import {RECEIEVE_SESSION_ERRORS, CLEAR_ERRORS} from '../actions/sessions_actions';

const sessionErrorsReducer = (oldState = [], action) => {
  switch (action.type) {
    case RECEIEVE_SESSION_ERRORS:
      return action.data;
    case CLEAR_ERRORS:
      return [];
    default:
      return oldState;
  }
};

export default sessionErrorsReducer;