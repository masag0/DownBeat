import React from 'react';
import {Route} from 'react-router-dom';
import lodash from 'lodash';
import * as APIUtil from '../../util/playlist_api_util';

class Featured extends React.Component {
  constructor(props) {
    super(props);

    this.state = { featuredPlaylists: [] };
  }

  componentDidMount () {
    APIUtil.fetchFeaturedPlaylists().then(
      response => this.setState({featuredPlaylists: lodash.values(response)})
    );
  }
  
  playPlaylist (e, id) {
    this.props.getPlaylist(id).then( () => {
      let playlist = this.props.playlists[id];
      let songs = lodash.values(this.props.songs).filter(song => playlist.song_ids.includes(song.id));
      if (songs.length > 0) {
        songs = songs.sort((a, b) => {
          return playlist.song_ids.indexOf(a.id) - playlist.song_ids.indexOf(b.id);
        });
        this.props.addSongsToQueue(songs);
        this.props.playSong(songs[0]);
      }
    });
  }

  navigate (e, id) {
    if ( $(e.target).is($(".darken-square")) ) {
      this.props.history.push(`/playlists/${id}`);
    }
  }

  render(){

    return (
      <section>

        <section className="main-content-section featured">
          <h2 className="category-header">Featured</h2>
          <section className="main-index-container" id="featured-scroll-long">
            {
              this.state.featuredPlaylists.map(playlist => {
                return (
                  <div key={playlist.id} className="playlist-display" onClick={(e) => this.navigate(e, playlist.id)}>
                    <div className="img-container">
                      <img className="artist-img" src={playlist.img_url}></img>
                      <div className="darken-square">
                        <div className="darken-square-play" onClick={(e) => this.playPlaylist(e, playlist.id)}></div>
                      </div>
                    </div>
                    <a href={`/#/playlists/${playlist.id}`}><label id='artist-label'>{playlist.title}</label></a>
                  </div>
                );
              })
            }

          </section>
        </section>


      </section>
    );
  }
}


export default Featured;