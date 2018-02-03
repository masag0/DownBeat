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
        <section>
          <h1><a href='/#/'>DownBeat</a></h1>
          <br />
          <br />
          <br />
          <h1><a href='/#/'>Browse</a></h1>
          <br />
          <br />
          <h1>Genres</h1>
          <h1><a href="/#/artists">Artists</a></h1>
          <h1><a href="/#/albums">Albums</a></h1>
          <h1>Songs</h1>
          <br />
          <br />
          <br />
          <br />


          <section className="left-nav-playlists-container">
            <h1>Playlists</h1>

            <PlaylistListContainer />

          </section>

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
                <h2 className="addSongModal-header">Create New Playlist</h2>
              </header>

              <PlaylistFormContainer
                close={this.closeModal}
              />

            </div>


          </ReactModal>






        </section>
      </nav>
    );
  }
}


export default LeftNav;