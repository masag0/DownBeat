import React from 'react';
import LeftNavContainer from './left_nav_container';
import TopNavContainer from './top_nav_container';
import RightNavContainer from './right_nav_container';
import FooterAudioContainer from './footer_audio_container';
import MainNav from './main_nav';
import MainContentContainer from './main_content_container';
import {Route} from 'react-router-dom';

class Main extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main">
        <Route exact path='/' component={MainNav} />
        <Route exact path='/' component={MainContentContainer} />
        <Route path="/" component={LeftNavContainer}/>
        <Route path="/" component={TopNavContainer}/>
        <Route path="/" component={RightNavContainer}/>
        <Route path="/" component={FooterAudioContainer}/>
      </section>
    );
  }
}


export default Main;