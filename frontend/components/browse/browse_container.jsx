import React from 'react';
import { connect } from 'react-redux';
import Browse from './browse';
import lodash from 'lodash';
// import { getFeaturedPlaylists, getGenrePlaylists } from '../../actions/playlists_actions';

const mapStateToProps = (state) => ({
  // featuredPlaylists: lodash.values(state.entities.playlists)
  //   .filter(el => el.featured == true )
});

const mapDispatchToProps = (dispatch) => ({
  // getFeaturedPlaylists: () => dispatch(getFeaturedPlaylists()),
  // getGenrePlaylists: () => dispatch(getGenrePlaylists())
});

export default connect(mapStateToProps, mapDispatchToProps)(Browse);
