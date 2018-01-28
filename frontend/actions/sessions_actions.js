
import * as APIUtil from '../actions/sessions_actions';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIEVE_SESSION_ERRORS = 'RECEIEVE_SESSION_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  data: currentUser
});
export const receiveSessionErrors = (errors) => ({
  type: RECEIEVE_SESSION_ERRORS,
  data: errors
});
export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  data: errors
});

export const fetchLogin = (user) => (dispatch) => {
  return APIUtil.requestLogin(user)
    .then(response => dispatch(receiveCurrentUser(response)));
};