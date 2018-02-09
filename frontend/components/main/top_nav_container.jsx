import React from 'react';
import { connect } from 'react-redux';
import TopNav from './top_nav';
import {logout} from '../../actions/sessions_actions';
import {withRouter} from 'react-router-dom';
import {fetchResults, clearResults} from '../../actions/search_actions';

const mapStateToProps = (state) => ({
  currentUser: state.session.currentUser
});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout()),
  dispatch,
  fetchResults: (query) => dispatch(fetchResults(query)),
  // fetchResults,
  clearResults: () => dispatch(clearResults())
});

export default connect(mapStateToProps, mapDispatchToProps)(TopNav);