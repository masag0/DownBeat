import React from 'react';
import { connect } from 'react-redux';
import TopNav from './top_nav';
import {logout} from '../../actions/sessions_actions';

const mapStateToProps = (state) => ({

});

const mapDispatchToProps = (dispatch) => ({
  logout: () => dispatch(logout())
});

export default connect(mapStateToProps, mapDispatchToProps)(TopNav);