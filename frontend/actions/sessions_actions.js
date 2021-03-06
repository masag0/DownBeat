import * as APIUtil from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const CLEAR_SESSION_ERRORS = 'CLEAR_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  data: currentUser
});
export const receiveSessionErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  data: errors
});
// export const receiveErrors = (errors) => ({
//   type: RECEIVE_ERRORS,
//   data: errors
// });

export const clearSessionErrors = () => ({
  type: CLEAR_SESSION_ERRORS
});


export const login = (user) => (dispatch) => {
  return APIUtil.requestLogin(user)
    .then(
      response => dispatch(receiveCurrentUser(response)),
      errors => dispatch(receiveSessionErrors(errors.responseJSON))
    );

};

export const signup = (user) => (dispatch) => {
  return APIUtil.requestSignup(user)
    .then(
      response => dispatch(receiveCurrentUser(response)),
      errors => dispatch(receiveSessionErrors(errors.responseJSON))
    );
};

export const logout = () => (dispatch) => {
  return APIUtil.requestLogout()
    .then(
      response => dispatch(receiveCurrentUser(null))

    );
};