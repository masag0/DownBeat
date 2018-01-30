import React from 'react';
import {connect} from 'react-redux';
import SessionErrors from './session_errors';

const mapStateToProps = (state) => ({
  errors: state.errors.session
});

export default connect(mapStateToProps, null)(SessionErrors);