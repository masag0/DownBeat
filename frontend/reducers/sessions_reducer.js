import {RECEIVE_CURRENT_USER, RECEIEVE_SESSION_ERRORS} from '../actions/sessions_actions';
import lodash from 'lodash';

const _nullUser= {
  currentUser: null
};

const sessionsReducer = (oldState = _nullUser, action) => {
  let newState;
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      newState = lodash.merge({}, oldState);
      newState['currentUser'] = action.data;
      return newState;
    default:
      return oldState;
  }
};

export default sessionsReducer;