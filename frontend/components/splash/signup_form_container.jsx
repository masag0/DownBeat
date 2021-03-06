import React from 'react';
import { connect } from 'react-redux';
import SignupForm from './signup_form';
import {signup, login, clearSessionErrors} from '../../actions/sessions_actions';

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUser)
});

const mapDispatchToProps = (dispatch) => ({
  signup: user => dispatch(signup(user)),
  login: user => dispatch(login(user)),
  clearSessionErrors: () => dispatch(clearSessionErrors())
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);