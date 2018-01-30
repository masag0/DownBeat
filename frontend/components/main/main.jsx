import React from 'react';
import LeftNavContainer from './left_nav_container';
import TopNavContainer from './top_nav_container';
import RightNavContainer from './right_nav_container';
import FooterAudioContainer from './footer_audio_container';
import MainNav from './main_nav';
import MainContentContainer from './main_content_container';
import {Route} from 'react-router-dom';
import {ProtectedRoute} from '../../util/route_util';

class Main extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main">
        <ProtectedRoute exact path='/' component={MainNav} />
        <ProtectedRoute path='/' component={MainContentContainer} />
        <ProtectedRoute path="/" component={LeftNavContainer}/>
        <ProtectedRoute path="/" component={TopNavContainer}/>
        <ProtectedRoute path="/" component={RightNavContainer}/>
        <ProtectedRoute path="/" component={FooterAudioContainer}/>
      </section>
    );
  }
}


export default Main;