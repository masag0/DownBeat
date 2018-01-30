import React from 'react';
import {Route} from 'react-router-dom';
import ArtistIndexContainer from '../artists/artist_index_container';
import {ProtectedRoute} from '../../util/route_util';

class Browse extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section>

        <section className="main-content-section featured">
          <h2 className="category-header">Featured</h2>
          <section className="main-index-container" id="featured-scroll">
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
          </section>
        </section>

        <section className="main-content-section genres">
          <h2 className="category-header">Genres & Moods</h2>
          <section className="main-index-container" id="genre-display">
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
          </section>
        </section>

      </section>
    );
  }
}


export default Browse;