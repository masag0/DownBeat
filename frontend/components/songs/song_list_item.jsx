import React from 'react';

class SongList extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {id, track_num, title, link, duration }= this.props.song;
    const {album, artist} = this.props;
    return (
      <li className="song-list-item-container">
        <a><div className="track-num-header">{track_num}</div></a>
        <a><div className="title-header">{title}</div></a>
        <a href={`/#/artists/${artist.id}`}><div className="artist-header">{artist.name}</div></a>
        <a href={`/#/albums/${album.id}`}><div className="album-header">{album.title}</div></a>
        <a><div className="duration-header">{duration}</div></a>

      </li>
    );
  }
}


export default SongList;