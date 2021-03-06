import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';
import ReactModal from 'react-modal';
import PlaylistFormContainer from './playlist_form_container';
import lodash from 'lodash';


import SongListContainer from '../songs/song_list_container';


class PlaylistDetail extends React.Component {
  constructor(props) {
    super(props);

    this.state = { modalIsOpen: false };

    this.handleFollow = this.handleFollow.bind(this);
    this.removePlaylist = this.removePlaylist.bind(this);

    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);

    this.playPlaylist = this.playPlaylist.bind(this);
  }

  componentDidMount () {
    this.props.getPlaylist(this.props.match.params.playlistId);

    const edit = document.getElementsByClassName("edit-playlist-menu-li");
    const remove = document.getElementsByClassName("delete-playlist-menu-li");
    // const save = document.getElementsByClassName("save-playlist-menu-li");

    if (this.props.playlist && this.props.playlist.user_id !== this.props.currentUser.id) {

      for (let i = 0; i < edit.length; i++) {
        edit[i].classList.add('hidden');
        remove[i].classList.add('hidden');
        // save[i].classList.add('hidden');
      }

    }  else {

        for (let i = 0; i < edit.length; i++) {
          edit[i].classList.remove('hidden');
          remove[i].classList.remove('hidden');
          // save[i].classList.remove('hidden');

      }
    }
  }

  componentWillReceiveProps (nextProps) {
    if (this.props.match.params.playlistId !== nextProps.match.params.playlistId) {
      this.props.getPlaylist(nextProps.match.params.playlistId);
    }


    const edit = document.getElementsByClassName("edit-playlist-menu-li");
    const remove = document.getElementsByClassName("delete-playlist-menu-li");
    // const save = document.getElementsByClassName("save-playlist-menu-li");


    if (this.props.playlist && this.props.playlist.user_id !== this.props.currentUser.id) {

      for (let i = 0; i < edit.length; i++) {
        edit[i].classList.add('hidden');
        remove[i].classList.add('hidden');
        // save[i].classList.add('hidden');
      }

    }  else {

        for (let i = 0; i < edit.length; i++) {
          edit[i].classList.remove('hidden');
          remove[i].classList.remove('hidden');
          // save[i].classList.remove('hidden');

      }
    }
  }

  removePlaylist () {
    this.props.deletePlaylist(this.props.playlist.id)
      .then(
        this.props.history.push('/')
      );
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }

  closeModal () {
    this.setState({modalIsOpen: false});
  }

  handleFollow () {
    const currentUser = this.props.currentUser;
    const playlist = this.props.playlist;
    const followButton = document.getElementById('follow-btn');

    if (lodash.keys(currentUser.following_playlists).includes(playlist.id.toString())) {
      this.props.unfollowPlaylist(currentUser.id, playlist.id);
      followButton.classList.remove('followed-btn');
    } else {
      this.props.followPlaylist(currentUser.id, playlist.id);
      followButton.classList.add('followed-btn');
    }
  }

  handleHoverEnter () {
    const unfollow = document.getElementsByClassName('followed-btn')[0];
    if (unfollow) {
      unfollow.innerHTML = "Unfollow";
    }
  }
  handleHoverLeave () {
    const unfollow = document.getElementsByClassName('followed-btn')[0];
    if (unfollow) {
      unfollow.innerHTML = "Following";
    }
  }


  playPlaylist () {
    let songs = lodash.values(this.props.songs).filter(song => this.props.playlist.song_ids.includes(song.id));
    if (songs.length > 0) {
      songs = songs.sort((a, b) => {
        return this.props.playlist.song_ids.indexOf(a.id) - this.props.playlist.song_ids.indexOf(b.id);
      });
      this.props.addSongsToQueue(songs);
      this.props.playSong(songs[0]);
    }
  }


  render(){
    if (!this.props.playlist) {
      return null;
    }
    if (this.props.songs) {
      const songs = lodash.values(this.props.songs).filter(song => this.props.playlist.song_ids.includes(song.id));
    }
    const {id, title, genre, description, img_url, user_id, song_ids, duration} = this.props.playlist;
    let img = img_url;
    if (!img_url) {
      img = "https://s.discogs.com/images/default-label.png";
    }

    let followText = "Follow";
    const followButton = document.getElementById('follow-btn');
    const currentUser = this.props.currentUser;

    if (followButton) {
      if (currentUser.id === user_id) {
        followButton.classList.add('hidden');
      } else {
        followButton.classList.remove('hidden');
      }
      if (lodash.keys(currentUser.following_playlists).includes(id.toString())) {
          followText = "Following";
          followButton.classList.add("followed-btn");
      }
    }

    return (
      <div>
        <div className="row-flex">
          <header className="playlist-display artist-detail-header" >


              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img}></img>
              </div>

              <label className="artist-detail-label">{title}</label>

          </header>

          <section className="detail-text">
            <label className="category-detail-label">Playlist</label>
            <span className="genre-text">{genre}</span>
            <span className="description-text">{description}</span>
            <span className="duration-text">{song_ids.length} songs &bull; {this.formatDurationMinutes(duration)} minutes</span>
            <div className="detail-button-container">


              <button type="button" className="play-button" onClick={this.playPlaylist}>Play</button>


              <button type="button" className="follow-button" id="follow-btn"
                onClick={this.handleFollow}
                onMouseEnter={this.handleHoverEnter}
                onMouseLeave={this.handleHoverLeave}
              >{followText}
              </button>


              <button type="button" className="etc-button" onClick={this.openDropdown}>
                <div id="dots-button">. . .</div>

                  <div className="playlist-detail-menu-container">
                    <nav className="playlist-detail dropdown-content">
                      <ul className="playlist-detail dropdown-ul">

                        <li className="edit-playlist-menu-li" onClick={this.openModal}><a>Edit Playlist</a></li>

                          <ReactModal

                            isOpen={this.state.modalIsOpen}
                            onAfterOpen={this.afterOpenModal}
                            onRequestClose={this.closeModal}

                            className={{
                              base: 'addSongModal',
                              afterOpen: 'addSongModal_after-open',
                              beforeClose: 'addSongModal_before-close'
                            }}
                            overlayClassName={{
                              base: 'addSongModalOverlay',
                              afterOpen: 'addSongModalOverlay_after-open',
                              beforeClose: 'addSongModalOverlay_before-close'
                            }}
                            
                          >


                              <PlaylistFormContainer
                                playlist={this.props.playlist}
                                close={this.closeModal}
                              />




                          </ReactModal>

                        <li className="delete-playlist-menu-li" onClick={this.removePlaylist}><a>Delete Playlist</a></li>
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


export default PlaylistDetail;