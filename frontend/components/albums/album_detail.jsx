import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';
import lodash from 'lodash';
import SongListContainer from '../songs/song_list_container';

class AlbumDetail extends React.Component {
  constructor(props) {
    super(props);

    this.playAlbum = this.playAlbum.bind(this);
  }

  componentDidMount() {
    this.props.getAlbum(this.props.match.params.albumId);

  }

  componentWillReceiveProps (nextProps) {
    if (nextProps.location.pathname !== this.props.location.pathname){
      this.props.getAlbum(nextProps.match.params.albumId);
    }
  }

  playAlbum () {
    const songs = this.props.songs.sort((a,b) => a.track_num - b.track_num);
    this.props.addSongsToQueue(songs);
    this.props.playSong(songs[0]);
  }

  render(){
    if (!this.props.album) {
      return null;
    }

    let {id, title, genre, description, img_url, artist, duration, year} = this.props.album;

    let length;

    const songs = lodash.values(this.props.songs).filter(song => song.album.id == id);
    length = songs.length;

    if (title.length > 50) {
      title = title.slice(0,50)+"...";
    }

    return (
      <div>
        <div className="row-flex">
          <header className="playlist-display artist-detail-header" >


              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img_url}></img>
              </div>

              <label className="artist-detail-label"><div>{title}</div></label>

          </header>

          <section className="detail-text">
            <label className="category-detail-label">Album</label>
            <span className="genre-text">{artist.genre}</span>
            <span className="year-text">{year}</span>
            <span className="artist-text"><a href={`/#/artists/${artist.id}`}>
              <span className="glowing-link">{artist.name}</span></a>
            </span>
            <span className="description-text">{description}</span>
            <span className="duration-text">{length} songs &bull; {this.formatDurationMinutes(duration)} minutes</span>

            <div className="detail-button-container">
              <button type="button" className="play-button" onClick={this.playAlbum}>Play</button>
              <button type="button" className="etc-button">
                <div>. . .</div>

                <div className="playlist-detail-menu-container">
                  <nav className="playlist-detail dropdown-content">
                    <ul className="playlist-detail dropdown-ul">
                      <li><a>Save to Library</a></li>
                      <li><a>Remove from your Library</a></li>
                      <li><a>Share</a></li>
                    </ul>
                  </nav>
                </div>

              </button>
            </div>
          </section>

        </div>


        <Route path="/albums/:albumId" component={SongListContainer} />
      </div>
    );
  }

  formatDurationMinutes(seconds) {
    if (seconds) {

      let minutes = Math.floor(seconds/60);
      seconds = seconds % 60;
      if (seconds < 10) {
        seconds = "0"+seconds.toString();
      }
      return `${minutes}`;
    } else {
      return "";
    }
  }
}


export default AlbumDetail;