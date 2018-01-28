import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter, Route, Link } from 'react-router-dom';
import MainContainer from './main/main_container';
// import LoginFormContainer from './splash/login_form_container';
import Splash from './splash/splash';
import {ProtectedRoute, AuthRoute} from '../util/route_util';

const Root = ({store}) => (
  <Provider store={store}>
    <HashRouter>
      <div>
        <AuthRoute component={Splash}/>
        <ProtectedRoute path='/' component={MainContainer} />
      </div>
    </HashRouter>
  </Provider>
);

export default Root;