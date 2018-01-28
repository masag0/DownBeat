import React from 'react';
import { connect } from 'react-redux';
import LoginForm from './login_form';
import {login} from '../../actions/sessions_actions';

const mapStateToProps = (state) => ({
  
});

const mapDispatchToProps = (dispatch) => ({
  login: user => dispatch(login(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);