import * as APIUtil from '../util/search_api_util';
// import {receiveSongs} from ''

export const RECEIVE_RESULTS = 'RECEIVE_RESULTS';
export const CLEAR_RESULTS = 'CLEAR_RESULTS';

export const receiveResults = (results) => ({
  type: RECEIVE_RESULTS,
  data: results
});

export const clearResults = () => ({
  type: CLEAR_RESULTS
});

export const fetchResults = (query) => (dispatch) => {
  return APIUtil.fetchResults(query)
    .then(
      response => {
        dispatch(receiveResults(response));
      }
    );
};

