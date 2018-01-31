import React from 'react';
import SongListItemContainer from './song_list_item_container';

class SongList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    this.props.getSongs();
  }

  render() {
    if (!this.props.songs) {
      return null;
    }
    console.log(this.props.songs);
    let {songs} = this.props;
    songs = songs.sort((a,b) => a.track_num > b.track_num);
    return (
      <div className="song-list-container">
        <h2 className="category-header" id="song-list-header">
          <div className="track-num-header">#</div>
          <div className="title-header">Title</div>
          <div className="artist-header">Artist</div>
          <div className="album-header">Album</div>
          <div className="duration-header">Duration</div>
        </h2>
        <ul>
          {
            songs.map(song => {
              return (
                <SongListItemContainer
                  key={song.id}
                  songId={song.id}
                  artistId={song.artist_id}
                  albumId={song.album_id}
                />
              );
            })
          }
        </ul>
      </div>
    );
  }
}


export default SongList;