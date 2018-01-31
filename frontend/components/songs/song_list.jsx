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
      <div>
        <h2 className="category-header" id="song-list-header">
          <span >#</span>
          <span>Title</span>
          <span>Artist</span>
          <span>Album</span>
          <span>Duration</span>
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