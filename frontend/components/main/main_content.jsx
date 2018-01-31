import React from 'react';
import {Route} from 'react-router-dom';
import {ProtectedRoute} from '../../util/route_util';

import BrowseContainer from '../browse/browse_container';
import ArtistIndexContainer from '../artists/artist_index_container';
import ArtistDetailContainer from '../artists/artist_detail_container';
import AlbumDetailContainer from '../albums/album_detail_container';

class MainContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main-content">
        <ProtectedRoute exact path='/' component={BrowseContainer} />

        <ProtectedRoute exact path='/artists' component={ArtistIndexContainer}/>
        <ProtectedRoute path='/artists/:artistId' component={ArtistDetailContainer}/>
        <ProtectedRoute path='/albums/:albumId' component={AlbumDetailContainer}/>
      </section>
    );
  }
}


export default MainContent;