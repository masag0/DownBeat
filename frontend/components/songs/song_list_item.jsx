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
        <a><span>{track_num}</span></a>
        <a><span>{title}</span></a>
        <a><span>{artist.name}</span></a>
        <a><span>{album.title}</span></a>
        <a><span>{duration}</span></a>

      </li>
    );
  }
}


export default SongList;