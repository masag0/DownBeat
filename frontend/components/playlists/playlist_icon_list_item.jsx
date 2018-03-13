import React from 'react';
import lodash from 'lodash';

class PlaylistIconListItem extends React.Component {
  constructor(props) {
    super(props);

  }

  playPlaylist (e, id) {
    this.props.getPlaylist(id).then( () => {
      let playlist = this.props.playlists[id];
      let songs = lodash.values(this.props.songs).filter(song => playlist.song_ids.includes(song.id));
      if (songs.length > 0) {
        songs = songs.sort((a, b) => {
          return playlist.song_ids.indexOf(a.id) - playlist.song_ids.indexOf(b.id);
        });
        this.props.addSongsToQueue(songs);
        this.props.playSong(songs[0]);
      }
    });
  }

  navigate (e, id) {
    if ( $(e.target).is($(".darken-square")) ) {
      this.props.history.push(`/playlists/${id}`);
    }
  }

  render(){
    const {id, title, genre, description, img_url} = this.props.playlist;
    let img = img_url;
    if (!img_url) {
      img = "https://s.discogs.com/images/default-label.png";
    }
    return (
      <div className="playlist-display modal-playlist-item-container">
        <div className="img-container">
          <img className="artist-img" src={img}></img>
          <div className="darken-square">
            <div className="darken-square-play" onClick={(e) => this.playPlaylist(e, id)}></div>
          </div>
        </div>
        <a href={`/#/playlists/${id}`}><label id='artist-label'>{title}</label></a>
      </div>
    );
  }
}


export default PlaylistIconListItem;