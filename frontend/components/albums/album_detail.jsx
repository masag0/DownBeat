import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import SongListContainer from '../songs/song_list_container';

class AlbumDetail extends React.Component {
  constructor(props) {
    super(props);

  }

  componentDidMount() {
    // console.log(this.props.location.pathname);
    this.props.getAlbum(this.props.match.params.albumId);
  }

  render(){
    if (!this.props.album) {
      return null;
    }
    const {id, title, genre, description, img_url, artist_id, duration, year} = this.props.album;
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
            <span className="genre-text">{genre}</span>
            <span className="genre-text">{year}</span>
            <span className="description-text">{description}</span>
          </section>

        </div>

      </div>
    );
  }
}


export default AlbumDetail;