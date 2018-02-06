import React from 'react';
import ReactModal from 'react-modal';
import PlaylistListContainer from '../playlists/playlist_list_container';
import PlaylistFormContainer from '../playlists/playlist_form_container';


class LeftNav extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalIsOpen: false
    };

    this.openModal = this.openModal.bind(this);
    // this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    window.openPlaylistCreateModal = this.openModal.bind(this);
  }

  componentWillMount () {
    ReactModal.setAppElement('body');
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


  render(){
    return (
      <nav id="left-nav">
        <a id="logo-container" href='/#/'>
          <div id="logo-img"></div><h1 id="main-logo">DownBeat</h1>
        </a>
        <section className="left-nav-main-menu left-nav-menu">

          <h1><a href='/#/'>Browse</a></h1>

          <h1>Genres</h1>
          <h1><a href="/#/artists">Artists</a></h1>
          <h1><a href="/#/albums">Albums</a></h1>
          <h1></h1>

        </section>

        <section className="left-nav-playlists-container left-nav-menu">
          <h1 className="non-link-h1">Playlists</h1>

          <PlaylistListContainer />

        </section>


        <section>
          <div id="new-playlist-button-container">
            <button type="button" onClick={this.openModal}>New Playlist</button>
          </div>



          <ReactModal

            isOpen={this.state.modalIsOpen}
            onAfterOpen={this.afterOpenModal}
            onRequestClose={this.closeModal}

            className={{
              base: 'playlistModal addSongModal',
              afterOpen: 'addSongModal_after-open',
              beforeClose: 'addSongModal_before-close'
            }}
            overlayClassName={{
              base: 'playlistModal addSongModalOverlay',
              afterOpen: 'addSongModalOverlay_after-open',
              beforeClose: 'addSongModalOverlay_before-close'
            }}
            contentLabel="Example Modal"
          >


              <PlaylistFormContainer
                close={this.closeModal}
              />


          </ReactModal>



        </section>
      </nav>
    );
  }
}


export default LeftNav;