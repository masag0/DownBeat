import React from 'react';
import PlaylistListContainer from '../playlists/playlist_list_container';

class LeftNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <nav id="left-nav">
        <section>
          <h1><a href='/#/'>DownBeat</a></h1>
          <br />
          <br />
          <br />
          <h1><a href='/#/'>Browse</a></h1>
          <br />
          <br />
          <h1>Genres</h1>
          <h1><a href="/#/artists">Artists</a></h1>
          <h1><a href="/#/albums">Albums</a></h1>
          <h1>Songs</h1>
          <br />
          <br />
          <br />
          <br />


          <section className="left-nav-playlists-container">
            <h1>Playlists</h1>

            <PlaylistListContainer />

          </section>

        </section>


        <section>
          <div id="new-playlist-button-container">
            <button type="button">New Playlist</button>
          </div>
        </section>
      </nav>
    );
  }
}


export default LeftNav;