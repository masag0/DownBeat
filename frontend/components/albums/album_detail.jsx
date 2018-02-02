import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';

import SongListContainer from '../songs/song_list_container';

class AlbumDetail extends React.Component {
  constructor(props) {
    super(props);

  }

  componentDidMount() {
    this.props.getAlbum(this.props.match.params.albumId);
  }

  componentWillReceiveProps (nextProps) {
    if (nextProps.location.pathname !== this.props.location.pathname){
      this.props.getAlbum(nextProps.match.params.albumId);
    }
  }

  render(){
    if (!this.props.album) {
      return null;
    }
    const {songs} = this.props.songs;
    const {id, title, genre, description, img_url, artist, duration, year} = this.props.album;
    return (
      <div>
        <div className="row-flex">
          <header className="playlist-display artist-detail-header" >

              <label className="category-detail-label">Album</label>

              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img_url}></img>
              </div>

              <label className="artist-detail-label">{title}</label>

          </header>

          <section className="detail-text">
            <span className="genre-text">{artist.genre}</span>
            <span className="year-text">{year}</span>
            <span className="artist-text"><a href={`/#/artists/${artist.id}`}>{artist.name}</a></span>
            <span className="description-text">{description}</span>
            <div className="detail-button-container">
              <button type="button" className="play-button">Play</button>
              <button type="button" className="etc-button"><div>. . .</div></button>
            </div>
          </section>

        </div>


        <Route path="/albums/:albumId" songs={songs} component={SongListContainer} />
      </div>
    );
  }
}


export default AlbumDetail;