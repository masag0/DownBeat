import React from 'react';
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
      </section>
    );
  }
}


export default Main;