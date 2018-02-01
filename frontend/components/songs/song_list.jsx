import React from 'react';
import SongListItem from './song_list_item';

class SongList extends React.Component {
  constructor(props) {
    super(props);
    
  }

  componentDidMount () {
    this.props.getSongs();
  }

  componentWillReceiveProps (nextProps) {
    if (nextProps.location.pathname !== this.props.location.pathname){
      this.props.getSongs();
    }
  }

  render() {
    if (!this.props.songs) {
      return null;
    }
    let {songs} = this.props;
    songs = songs.sort((a,b) => a.track_num > b.track_num);
    return (
      <div className="song-list-container">
        <h2 className="category-header" id="song-list-header">
          <div className="track-num-header top-header">#</div>
          <div className="title-header top-header" >Title</div>
          <div className="artist-header top-header">Artist</div>
          <div className="album-header top-header">Album</div>
          <div className="duration-header top-header">Duration</div>
        </h2>
        <ul className="song-list-ul">
          {
            songs.map(song => {
              return (
                <SongListItem
                  key={song.id}
                  song={song}
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