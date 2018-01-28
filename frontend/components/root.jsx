import React from 'react';
import { Provider } from 'react-redux';
import { HashRouter, Route, Link } from 'react-router-dom';
import MainContainer from './main/main_container';
import LeftNavContainer from './main/left_nav_container';
import TopNavContainer from './main/top_nav_container';
import RightNavContainer from './main/right_nav_container';
import FooterAudioContainer from './main/footer_audio_container';

const Root = ({store}) => (
  <Provider store={store}>
    <HashRouter>
      <div>
        <Route path="/" component={MainContainer}/>
        <Route path="/" component={LeftNavContainer}/>
        <Route path="/" component={TopNavContainer}/>
        <Route path="/" component={RightNavContainer}/>
        <Route path="/" component={FooterAudioContainer}/>
      </div>
    </HashRouter>
  </Provider>
);

export default Root;