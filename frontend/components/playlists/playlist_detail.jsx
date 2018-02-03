import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';

import SongListContainer from '../songs/song_list_container';


class PlaylistDetail extends React.Component {
  constructor(props) {
    super(props);

    // this.openDropdown = this.openDropdown.bind(this);
  }

  componentDidMount () {
    this.props.getPlaylist(this.props.match.params.playlistId);

    if (this.props.playlist && this.props.playlist.user_id !== this.props.currentUser.id) {
      const edit = document.getElementsByClassName("edit-playlist-menu-li");
      const remove = document.getElementsByClassName("delete-playlist-menu-li");
      const save = document.getElementsByClassName("save-playlist-menu-li");

      for (let i = 0; i < edit.length; i++) {
        edit[i].classList.add('hidden');
        remove[i].classList.add('hidden');
        save[i].classList.add('hidden');
      }
    }
  }
  componentWillReceiveProps (nextProps) {
    if (this.props.match.params.playlistId !== nextProps.match.params.playlistId) {
      this.props.getPlaylist(nextProps.match.params.playlistId);
    }
  }

  // openDropdown () {
  //   console.log(document.getElementsByClassName("etc-button")[0]);
  //   document.getElementsByClassName("playlist-detail-menu-container")[0].classList.toggle("hidden");
  // }

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
              <button type="button" className="etc-button" onClick={this.openDropdown}>
                <div id="dots-button">. . .</div>

                  <div className="playlist-detail-menu-container">
                    <nav className="playlist-detail dropdown-content">
                      <ul className="playlist-detail dropdown-ul">
                        <li className="save-playlist-menu-li"><a>Save to Library</a></li>
                        <li className="edit-playlist-menu-li"><a>Edit Playlist</a></li>
                        <li className="delete-playlist-menu-li"><a>Delete Playlist</a></li>
                        <li><a>Share</a></li>
                      </ul>
                    </nav>
                  </div>

              </button>
            </div>
          </section>

        </div>


        <Route path="/playlists/:playlistId" component={SongListContainer} />
      </div>
    );
  }
}


export default PlaylistDetail;