import React from 'react';
import ReactDOM from 'react-dom';
import ReactModal from 'react-modal';
import PlaylistModalListContainer from '../playlists/playlist_modal_list_container';



class SongList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalIsOpen: false
    };

    this.menuHoverEnter = this.menuHoverEnter.bind(this);
    this.menuHoverLeave = this.menuHoverLeave.bind(this);
    this.removeSongFromPlaylist = this.removeSongFromPlaylist.bind(this);
    this.playSong = this.playSong.bind(this);

    this.openModal = this.openModal.bind(this);

    // this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  componentWillMount() {
    ReactModal.setAppElement('body');
 }

  componentDidMount() {
    if (!this.props.match.params.playlistId) {
      const arr = document.getElementsByClassName("remove-song-menu-li");
      for (let i = 0; i < arr.length; i++) {
        arr[i].classList.add('hidden');
      }
    }
  }

  menuHoverEnter () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    const playIcon = document.getElementById(`play-icon#${this.props.song.id}`);
    const trackNum = document.getElementById(`num#${this.props.song.id}`);

    menu.classList.remove("hidden");
    playIcon.classList.remove("hidden");
    trackNum.innerHTML = "";
  }

  menuHoverLeave () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    const playIcon = document.getElementById(`play-icon#${this.props.song.id}`);
    const trackNum = document.getElementById(`num#${this.props.song.id}`);

    menu.classList.add("hidden");
    playIcon.classList.add("hidden");
    if (this.props.match.params.albumId) {
      trackNum.innerHTML = this.props.song.track_num;
    }
  }

  openModal() {
    this.setState({modalIsOpen: true});
  }
  //
  // afterOpenModal() {
  // }

  closeModal () {
    this.setState({modalIsOpen: false});
  }

  removeSongFromPlaylist (e) {
    this.props.removeSong(
      this.props.match.params.playlistId,
      this.props.song.id
    ).then(
      document.getElementById(`song-list-li#${this.props.song.id}`).classList.add('hidden')
    );

  }

  playSong (song) {
    this.props.playSong(song);
  }


  render() {
    const {id, track_num, title, link, duration, album, artist }= this.props.song;
    let track_number;
    if (this.props.match.params.albumId) {
      track_number = track_num;
    } else {
      track_number = "";
    }
    return (

        <li id={`song-list-li#${id}`} className="song-list-item-container" onMouseEnter={this.menuHoverEnter} onMouseLeave={this.menuHoverLeave}>
          <a><div className="track-num-header" id={`num#${id}`}>{track_number}</div></a>
          <div className="song-list-play-icon hidden" id={`play-icon#${id}`} onClick={() => this.playSong(this.props.song)}></div>
          <div className="song-list-pause-icon hidden" id={`pause-icon#${id}`} onClick={() => this.playSong(this.props.song)}></div>
          <a><div className="title-header" onClick={() => this.playSong(this.props.song)}>{title}</div></a>
          <a href={`/#/artists/${artist.id}`}><div className="artist-header">{artist.name}</div></a>
          <a href={`/#/albums/${album.id}`}><div className="album-header">{album.title}</div></a>


          <div className="menu-header song-detail-menu">
            <div className="song-detail-menu-container">
              <div className="dots hidden" id={`#${id}`}>. . .</div>
              <nav className="song-detail dropdown-content">
                <ul className="song-detail dropdown-ul">
                  <li><a>Add to Queue</a></li>
                  <li><a onClick={this.openModal}>Add to Playlist</a></li>

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
                      contentLabel="Example Modal"
                    >
                      <div className="addSongModal-content">
                        <header>
                          <h2 className="addSongModal-header">Add To Playlist</h2>
                        </header>
                        <section className="addSongModal-playlist-container">
                          <button id="addSongModal-close-button" onClick={this.closeModal}></button>

                          <button id="playlist-create-modal-button" onClick={window.openPlaylistCreateModal} >New Playlist</button>


                          <PlaylistModalListContainer
                            songId={id}
                            close={this.closeModal}
                          />

                        </section>

                      </div>


                    </ReactModal>

                  <li><a>Save to Library</a></li>
                  <li className="remove-song-menu-li" onClick={this.removeSongFromPlaylist}><a>Remove from this Playlist</a></li>
                  <li><a>Share</a></li>
                </ul>
              </nav>
            </div>
          </div>


          <a><div className="duration-header">{this.formatDuration(duration)}</div></a>

        </li>
    );
  }


  formatDuration(seconds) {
    if (seconds) {

      let minutes = Math.floor(seconds/60);
      seconds = seconds % 60;
      if (seconds < 10) {
        seconds = "0"+seconds.toString();
      }
      return `${minutes}:${seconds}`;
    } else {
      return "";
    }
  }
}


export default SongList;