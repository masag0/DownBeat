import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';

import SongListContainer from '../songs/song_list_container';

class PlaylistDetail extends React.Component {
  constructor(props) {
    super(props);

  }

  componentDidMount () {
    this.props.getPlaylist(this.props.match.params.playlistId);
  }
  componentWillReceiveProps (nextProps) {
    if (this.props.match.params.playlistId !== nextProps.match.params.playlistId) {
      this.props.getPlaylist(nextProps.match.params.playlistId);
    }
  }

  render(){
    if (!this.props.playlist) {
      return null;
    }
    const {songs} = this.props.songs;
    const {id, title, genre, description, img_url, user_id, song_ids, duration} = this.props.playlist;
    let img = img_url;
    if (!img_url) {
      img = "https://s.discogs.com/images/default-label.png";
    }

    return (
      <div>
        <div className="row-flex">
          <header className="playlist-display artist-detail-header" >

              <label className="category-detail-label">Playlist</label>

              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img}></img>
              </div>

              <label className="artist-detail-label">{title}</label>

          </header>

          <section className="detail-text">
            <span className="genre-text">{genre}</span>
            <span className="description-text">{description}</span>
            <div className="detail-button-container">
              <button type="button" className="play-button">Play</button>
              <button type="button" className="etc-button">. . .</button>
            </div>
          </section>

        </div>


        <Route path="/playlists/:playlistId" component={SongListContainer} />
      </div>
    );
  }
}


export default PlaylistDetail;