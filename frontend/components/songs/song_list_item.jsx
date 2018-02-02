import React from 'react';
import ReactModal from 'react-modal';

class SongList extends React.Component {
  constructor(props) {
    super(props);

    this.state = {
      modalIsOpen: false
    };

    this.menuHoverEnter = this.menuHoverEnter.bind(this);
    this.menuHoverLeave = this.menuHoverLeave.bind(this);
    this.addToPlaylist = this.addToPlaylist.bind(this);

    this.openModal = this.openModal.bind(this);
    this.afterOpenModal = this.afterOpenModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
  }

  componentWillMount() {
    ReactModal.setAppElement('body');
 }

  componentDidMount() {
    if (!this.props.match.params.playlistId) {
      document.getElementById("remove-song-menu-li").classList.add("hidden");
    }
  }

  menuHoverEnter () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    menu.classList.remove("hidden");
  }

  menuHoverLeave () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    menu.classList.add("hidden");
  }

  addToPlaylist () {
    this.props.addSong(this.props.playlistId, this.props.songId);
  }


  openModal() {
    this.setState({modalIsOpen: true});
  }

  afterOpenModal() {
    // references are now sync'd and can be accessed.
    // this.subtitle.style.color = '#f00';
  }

  closeModal() {
    this.setState({modalIsOpen: false});
  }


  render() {
    const {id, track_num, title, link, duration, album, artist }= this.props.song;
    return (

        <li className="song-list-item-container" onMouseEnter={this.menuHoverEnter} onMouseLeave={this.menuHoverLeave}>
          <a><div className="track-num-header">{track_num}</div></a>
          <a><div className="title-header">{title}</div></a>
          <a href={`/#/artists/${artist.id}`}><div className="artist-header">{artist.name}</div></a>
          <a href={`/#/albums/${album.id}`}><div className="album-header">{album.title}</div></a>


          <div className="menu-header song-detail-menu">
            <div className="song-detail-menu-container">
              <div className="dots hidden" id={`#${this.props.song.id}`}>. . .</div>
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
                          <button onClick={this.closeModal}>Close</button>
                          {

                          }
                        </section>

                      </div>


                    </ReactModal>

                  <li><a>Save to Library</a></li>
                  <li id="remove-song-menu-li"><a>Remove from this Playlist</a></li>
                  <li><a>Share</a></li>
                </ul>
              </nav>
            </div>
          </div>


          <a><div className="duration-header">{duration}</div></a>

        </li>
    );
  }
}


export default SongList;