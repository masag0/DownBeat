import React from 'react';
import {Route} from 'react-router-dom';
import ArtistIndexContainer from '../artists/artist_index_container';
import {ProtectedRoute} from '../../util/route_util';
import BrowseContainer from '../browse/browse_container';

class MainContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main-content">
        <ProtectedRoute exact path='/' component={BrowseContainer} />

        <ProtectedRoute exact path='/artists' component={ArtistIndexContainer}/>
      </section>
    );
  }
}


export default MainContent;