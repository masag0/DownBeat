import React from 'react';
import SongListItemContainer from './song_list_item_container';
import lodash from 'lodash';

class SongList extends React.Component {
  constructor(props) {
    super(props);

  }

  // componentWillMount () {
  //   // this.props.getSongs();
  //   this.props.getSongs();
  // }
  //
  // componentWillReceiveProps (nextProps) {
  //   if (nextProps.location.pathname !== this.props.location.pathname){
  //     this.props.getSongs();
  //   }
  // }

  render() {
    if (!this.props.songs) {
      return null;
    }
    let {songs} = this.props;
    //
    // lodash.values(songs)
    //     .filter(song => this.props.playlist.song_ids.includes(song.id));


    if (this.props.match.params.albumId) {
      console.log('sort');
      songs = songs.sort((a,b) => a.track_num - b.track_num);
    }


    return (
      <div className="song-list-container">
        <h2 className="category-header" id="song-list-header">
          <div className="track-num-header top-header">#</div>
          <div className="title-header top-header" >Title</div>
          <div className="artist-header top-header">Artist</div>
          <div className="album-header top-header">Album</div>
          <div className="menu-header top-header"></div>
          <div className="duration-header top-header">Duration</div>
        </h2>
        <ul className="song-list-ul">
          {
            songs.map(song => {
              return (
                <SongListItemContainer
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