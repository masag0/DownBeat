import React from 'react';
import {Route} from 'react-router-dom';
import {ProtectedRoute} from '../../util/route_util';

import BrowseContainer from '../browse/browse_container';
import ArtistIndexContainer from '../artists/artist_index_container';
import AlbumListContainer from '../albums/album_list_container';
import ArtistDetailContainer from '../artists/artist_detail_container';
import AlbumDetailContainer from '../albums/album_detail_container';
import PlaylistDetailContainer from '../playlists/playlist_detail_container';

class MainContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main-content">
        <Route exact path='/' component={BrowseContainer} />

        <Route exact path='/artists' component={ArtistIndexContainer}/>
        <Route exact path='/albums' component={AlbumListContainer}/>


        <Route path='/artists/:artistId' component={ArtistDetailContainer}/>
        <Route path='/albums/:albumId' component={AlbumDetailContainer}/>
        <Route path='/playlists/:playlistId' component={PlaylistDetailContainer}/>
      </section>
    );
  }
}


export default MainContent;