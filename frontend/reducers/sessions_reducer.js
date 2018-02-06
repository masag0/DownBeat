import {RECEIVE_CURRENT_USER} from '../actions/sessions_actions';
import {RECEIVE_FOLLOW, REMOVE_FOLLOW} from '../actions/playlists_actions';
import lodash from 'lodash';

const _nullUser= {
  currentUser: null
};

const sessionsReducer = (oldState = _nullUser, action) => {
  let newState;
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
    console.log(action.data);
      newState = lodash.merge({}, oldState);
      newState['currentUser'] = action.data;
      if (newState.currentUser) {
        if (!newState.currentUser.following_playlists) {
          newState.currentUser['following_playlists'] = [];
        } else if (!newState.currentUser.created_playlists) {
          newState.currentUser['created_playlists'] = [];
        }
      }
      return newState;

    case RECEIVE_FOLLOW:
      newState = lodash.merge({}, oldState);
      newState.currentUser.following_playlists[action.data.id] = action.data;
      return newState;

    case REMOVE_FOLLOW:
      newState = lodash.merge({}, oldState);
      // newState.currentUser['following_playlists'] = lodash.keys(newState.currentUser.following_playlists)
      //   .filter(el => el !== action.data);
      delete newState.currentUser.following_playlists[action.data];
      return newState;

    default:
      return oldState;
  }
};

export default sessionsReducer;