import React from 'react';
import { connect } from 'react-redux';
import LoginForm from './login_form';
import {login, clearSessionErrors} from '../../actions/sessions_actions';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser)
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);