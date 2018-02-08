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

  render(){

    return (
      <section>

        <section className="main-content-section featured">
          <h2 className="category-header">Featured</h2>
          <section className="main-index-container" id="featured-scroll-long">
            {
              this.state.featuredPlaylists.map(playlist => {
                return (
                  <a key={playlist.id} className="playlist-display" href={`/#/playlists/${playlist.id}`}>
                    <div className="img-container">
                      <img className="artist-img" src={playlist.img_url}></img>
                    </div>
                    <label id='artist-label'>{playlist.title}</label>
                  </a>
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