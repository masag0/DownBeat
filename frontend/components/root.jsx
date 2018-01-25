import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter, Route } from 'react-router-dom';
import MainContainer from './main_container';
import LeftNavContainer from './left_nav_container';
import TopNavContainer from './top_nav_container';
import FooterAudioContainer from './footer_audio_container';

const Root = ({store}) => (
  <Provider store={store}>
    <HashRouter>
      <div>
        <Route path="/" component={MainContainer}/>
        <Route path="/" component={LeftNavContainer}/>
        <Route path="/" component={TopNavContainer}/>
        <Route path="/" component={FooterAudioContainer}/>
      </div>
    </HashRouter>
  </Provider>
);

export default Root;