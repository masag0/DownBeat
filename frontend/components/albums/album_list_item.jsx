import React from 'react';
import lodash from 'lodash';

class AlbumListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  playPlaylist (e, id) {
    this.props.getAlbum(id).then( () => {
      let songs = lodash.values(this.props.songs).filter(song => song.album.id === id);
      if (songs.length > 0) {
        songs = songs.sort( (a, b) => a.track_num - b.track_num );
        this.props.addSongsToQueue(songs);
        this.props.playSong(songs[0]);
      }
    });
  }

  navigate (e, id) {
    if ( $(e.target).is($(".darken-square")) ) {
      this.props.history.push(`/albums/${id}`);
    }
  }

  render() {
    const {id, title, description, img_url, duration, year, artist_id, genre} = this.props.album;
    return (
      <div className="playlist-display" onClick={(e) => this.navigate(e, id)}>
        <div className="img-container">
          <img className="artist-img" src={img_url}></img>
          <div className="darken-square">
            <div className="darken-square-play" onClick={(e) => this.playPlaylist(e, id)}></div>
          </div>
        </div>
        <a href={`/#/albums/${id}`}><label id='artist-label'>{title}</label></a>
      </div>
    );
  }
}


export default AlbumListItem;