import React from 'react';

class LeftNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <nav id="left-nav">
        <section>
          <h1>DownBeat</h1>
          <br />
          <br />
          <br />
          <h1>Browse</h1>
          <br />
          <br />
          <h1>Genres</h1>
          <h1>Artists</h1>
          <h1>Albums</h1>
          <h1>Songs</h1>
          <br />
          <br />
          <br />
          <br />

          <h1>Playlists</h1>
          <br />
          <br />
          <br />
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