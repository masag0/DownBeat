import React from 'react';

class SongList extends React.Component {
  constructor(props) {
    super(props);

    this.menuHoverEnter = this.menuHoverEnter.bind(this);
    this.menuHoverLeave = this.menuHoverLeave.bind(this);
  }

  menuHoverEnter () {
    const menu = document.querySelector(".song-detail-menu");
    menu.classList.toggle(this.props.song.id + "hidden");
  }

  menuHoverLeave () {
    const menu = document.querySelector(".song-detail-menu");
    menu.classList.toggle("hidden");
  }

  render() {
    const {id, track_num, title, link, duration, album, artist }= this.props.song;
    return (
      <li className="song-list-item-container" onMouseEnter={this.menuHoverEnter} onMouseLeave={this.menuHoverLeave}>
        <a><div className="track-num-header">{track_num}</div></a>
        <a><div className="title-header">{title}</div></a>
        <a href={`/#/artists/${artist.id}`}><div className="artist-header">{artist.name}</div></a>
        <a href={`/#/albums/${album.id}`}><div className="album-header">{album.title}</div></a>
        <a><div className="menu-header"><div className={`${id} song-detail-menu hidden`}>. . .</div></div></a>
        <a><div className="duration-header">{duration}</div></a>

      </li>
    );
  }
}


export default SongList;