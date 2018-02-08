import React from 'react';
import { connect } from 'react-redux';
import Genres from './genres';
import lodash from 'lodash';
// import { getGenrePlaylists } from '../../actions/playlists_actions';

const mapStateToProps = (state) => ({
  // featuredPlaylists: lodash.values(state.entities.playlists)
  //   .filter(el => el.featured == true )
});

const mapDispatchToProps = (dispatch) => ({
  // getGenrePlaylists: () => dispatch(getGenrePlaylists())
});

export default connect(mapStateToProps, mapDispatchToProps)(Genres);
