import React from 'react';
import lodash from 'lodash';

class ArtistIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  playPlaylist (e, id) {
    this.props.getArtist(id).then( () => {
      let albumId = lodash.values(this.props.albums).filter(album => album.artist_id === id)[0].id;
      this.props.getAlbum(albumId).then( () => {
        let songs = lodash.values(this.props.songs).filter(song => song.album.id === albumId);
        if (songs.length > 0) {
          songs = songs.sort( (a, b) => a.track_num - b.track_num );
          this.props.addSongsToQueue(songs);
          this.props.playSong(songs[0]);
        }
      });
    });
  }

  navigate (e, id) {
    if ( $(e.target).is($(".darken-square")) ) {
      this.props.history.push(`/artists/${id}`);
    }
  }

  render(){
    const {id, name, genre, description, img_url} = this.props.artist;
    return (
      <div className="playlist-display" onClick={(e) => this.navigate(e, id)}>
        <div className="img-container">
          <img className="artist-img" src={img_url}></img>
          <div className="darken-square">
            <div className="darken-square-play" onClick={(e) => this.playPlaylist(e, id)}></div>
          </div>
        </div>
        <a href={`/#/artists/${id}`}><label id='artist-label'>{name}</label></a>
      </div>
    );
  }
}


export default ArtistIndexItem;