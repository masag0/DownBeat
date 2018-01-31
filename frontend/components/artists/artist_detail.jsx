import React from 'react';
import AlbumListContainer from '../albums/album_list_container';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';


class ArtistDetail extends React.Component {
  constructor(props) {
    super(props);

  }

  componentDidMount() {
    // console.log(this.props.location.pathname);
    this.props.getArtist(this.props.match.params.artistId);
  }

  render(){
    if (!this.props.artist) {
      return null;
    }
    const {id, name, genre, description, img_url} = this.props.artist;
    return (
      <div>
        <div className="row-flex detail-min-header">
          <header className="playlist-display artist-detail-header" >

              <label className="category-detail-label">Artist</label>

              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img_url}></img>
              </div>

              <label className="artist-detail-label">{name}</label>

          </header>

          <section className="detail-text">
            <span className="genre-text">{genre}</span>
            <span className="description-text">{description}</span>
          </section>

        </div>



        <Route path="/artists/:artistId" component={AlbumListContainer} />
      </div>
    );
  }
}


export default ArtistDetail;