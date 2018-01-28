import React from 'react';
import { connect } from 'react-redux';
import SignupForm from './signup_form';
import {signup} from '../../actions/sessions_actions';

const mapStateToProps = (state) => ({

});

const mapDispatchToProps = (dispatch) => ({
  signup: user => dispatch(signup(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(SignupForm);