import React from 'react';
import { connect } from 'react-redux';
import Featured from './featured';
import lodash from 'lodash';
// import { getFeaturedPlaylists } from '../../actions/playlists_actions';

const mapStateToProps = (state) => ({
  // featuredPlaylists: lodash.values(state.entities.playlists)
  //   .filter(el => el.featured == true )
});

const mapDispatchToProps = (dispatch) => ({
  // getFeaturedPlaylists: () => dispatch(getFeaturedPlaylists())
});

export default connect(mapStateToProps, mapDispatchToProps)(Featured);
