import React from 'react';
import lodash from 'lodash';
import SearchSongList from './search_song_list';
import ArtistIndex from '../artists/artist_index';
import AlbumList from '../albums/album_list';
import PlaylistIconList from '../playlists/playlist_icon_list';

class SearchIndex extends React.Component {
  constructor(props) {
    super(props);

    this.state = {songs: [], artists: [], albums: [], playlists: []};
  }

  componentDidMount () {
    const {songs, artists, albums, playlists} = this.props.results;
    this.setState(
      {
        songs: lodash.values(songs),
        artists: lodash.values(artists),
        albums: lodash.values(albums),
        playlists: lodash.values(playlists)
      }
    );
  }

  componentWillReceiveProps (nextProps)  {
    const {songs, artists, albums, playlists} = nextProps.results;
    this.setState(
      {
        songs: lodash.values(songs),
        artists: lodash.values(artists),
        albums: lodash.values(albums),
        playlists: lodash.values(playlists)
      }
    );
  }

  render(){
    const {songs, artists, albums, playlists} = this.state;

    return (
      <div>
        <h2 className="category-header">Search Results</h2>
          {songs.length > 0 && <SearchSongList songs={this.state.songs}/>}
          {playlists.length > 0 && <PlaylistIconList playlists={this.state.playlists} search={true}/>}
          {artists.length > 0 && <ArtistIndex artists={this.state.artists} search={true}/>}
          {albums.length > 0 && <AlbumList albums={this.state.albums} search={true}/>}
      </div>
    );
  }
}


export default SearchIndex;


