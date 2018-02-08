import React from 'react';
import {Route} from 'react-router-dom';
import {ProtectedRoute} from '../../util/route_util';

import BrowseContainer from '../browse/browse_container';
import FeaturedContainer from '../browse/featured_container';
import GenresContainer from '../browse/genres_container';
import ArtistIndexContainer from '../artists/artist_index_container';
import AlbumListContainer from '../albums/album_list_container';
import ArtistDetailContainer from '../artists/artist_detail_container';
import AlbumDetailContainer from '../albums/album_detail_container';
import PlaylistDetailContainer from '../playlists/playlist_detail_container';
import SearchIndexContainer from '../search/search_index_container';

class MainContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main-content">
        <ProtectedRoute exact path='/featured' component={FeaturedContainer} />
        <ProtectedRoute exact path='/genres' component={GenresContainer} />
        <ProtectedRoute exact path='/' component={BrowseContainer} />


        <ProtectedRoute exact path='/search' component={SearchIndexContainer} />


        <ProtectedRoute exact path='/artists' component={ArtistIndexContainer}/>
        <ProtectedRoute exact path='/albums' component={AlbumListContainer}/>


        <ProtectedRoute path='/artists/:artistId' component={ArtistDetailContainer}/>
        <ProtectedRoute path='/albums/:albumId' component={AlbumDetailContainer}/>
        <ProtectedRoute path='/playlists/:playlistId' component={PlaylistDetailContainer}/>
      </section>
    );
  }
}


export default MainContent;