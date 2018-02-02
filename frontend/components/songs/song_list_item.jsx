import React from 'react';


class SongList extends React.Component {
  constructor(props) {
    super(props);

    this.menuHoverEnter = this.menuHoverEnter.bind(this);
    this.menuHoverLeave = this.menuHoverLeave.bind(this);
  }

  menuHoverEnter () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    menu.classList.remove("hidden");
  }

  menuHoverLeave () {
    const menu = document.getElementById(`#${this.props.song.id}`);
    menu.classList.add("hidden");
  }

  render() {
    const {id, track_num, title, link, duration, album, artist }= this.props.song;
    return (
      <li className="song-list-item-container" onMouseEnter={this.menuHoverEnter} onMouseLeave={this.menuHoverLeave}>
        <a><div className="track-num-header">{track_num}</div></a>
        <a><div className="title-header">{title}</div></a>
        <a href={`/#/artists/${artist.id}`}><div className="artist-header">{artist.name}</div></a>
        <a href={`/#/albums/${album.id}`}><div className="album-header">{album.title}</div></a>
        <a>
          <div className="menu-header song-detail-menu dropbtn">
            <div  className="song-detail-menu-container ">
              <div className="dots hidden" id={`#${id}`}>. . .</div>
              <nav className="song-detail dropdown-content hidden">
                <ul className="song-detail dropdown-ul">
                  <li><a>Add to Queue</a></li>
                  <li><a>Add to Playlist</a></li>
                  <li><a>Save to Library</a></li>
                  <li><a>Remove from this Playlist</a></li>
                  <li><a>Share</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </a>
        <a><div className="duration-header">{duration}</div></a>

      </li>
    );
  }
}


export default SongList;