import React from 'react';
import {ProtectedRoute} from '../../util/route_util';
import {Route} from 'react-router-dom';
import ReactModal from 'react-modal';
import PlaylistFormContainer from './playlist_form_container';


import SongListContainer from '../songs/song_list_container';


class PlaylistDetail extends React.Component {
  constructor(props) {
    super(props);

    this.state = { modalIsOpen: false };

    this.removePlaylist = this.removePlaylist.bind(this);

    this.openModal = this.openModal.bind(this);
    // this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);

    // this.openDropdown = this.openDropdown.bind(this);
    // this.closeDropdown = this.closeDropdown.bind(this);
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

  removePlaylist () {
    this.props.deletePlaylist(this.props.playlist.id)
      .then(
        this.props.history.push('/')
      );
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

  // openDropdown () {
  //   document.getElementsByClassName('playlist-detail-menu-container')[0].classList.remove("hidden");
  // }
  //
  // closeDropdown() {
  //   document.getElementsByClassName('playlist-detail-menu-container')[0].classList.add("hidden");
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


              <div className="img-container" id="artist-detail-img">
                <img className="artist-img" src={img}></img>
              </div>

              <label className="artist-detail-label">{title}</label>

          </header>

          <section className="detail-text">
            <label className="category-detail-label">Playlist</label>
            <span className="genre-text">{genre}</span>
            <span className="description-text">{description}</span>
            <div className="detail-button-container">
              <button type="button" className="play-button">Play</button>
              <button type="button" className="etc-button" onClick={this.openDropdown}>
                <div id="dots-button">. . .</div>

                  <div className="playlist-detail-menu-container">
                    <nav className="playlist-detail dropdown-content">
                      <ul className="playlist-detail dropdown-ul">
                        <li className="save-playlist-menu-li" ><a>Save to Library</a></li>
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
                            contentLabel="Example Modal"
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
}


export default PlaylistDetail;