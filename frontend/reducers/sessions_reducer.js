import {RECEIVE_CURRENT_USER} from '../actions/sessions_actions';
import {RECEIVE_FOLLOW, REMOVE_FOLLOW} from '../actions/playlists_actions';
import lodash from 'lodash';

const _nullUser= {
  currentUser: {
    following_playlist_ids: []
  }
};

const sessionsReducer = (oldState = _nullUser, action) => {
  let newState;
  switch (action.type) {
    case RECEIVE_CURRENT_USER:
      newState = lodash.merge({}, oldState);
      newState['currentUser'] = action.data;
      return newState;

    case RECEIVE_FOLLOW:
      console.log(action.data);
      newState = lodash.merge({}, oldState);
      newState.currentUser['following_playlist_ids'].push(action.data);
      return newState;

    case REMOVE_FOLLOW:
      console.log(action.data);
      newState = lodash.merge({}, oldState);
      newState.currentUser['following_playlist_ids'] = newState.currentUser.following_playlist_ids
        .filter(el => el !== action.data);
        
      return newState;

    default:
      return oldState;
  }
};

export default sessionsReducer;