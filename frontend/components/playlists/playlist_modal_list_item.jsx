import React from 'react';

class PlaylistModalListItem extends React.Component {
  constructor(props) {
    super(props);

    this.addSongToPlaylist = this.addSongToPlaylist.bind(this);
  }

  componentDidMount () {
  }

  addSongToPlaylist () {
    this.props.addSong(this.props.playlist.id, this.props.songId).then(
      this.props.close()
    );
  }


  render(){
    const {id, title, genre, description, img_url} = this.props.playlist;
    let img = img_url;
    if (!img_url) {
      img = "https://s.discogs.com/images/default-label.png";
    }
    return (
      <a className="playlist-display modal-playlist-item-container" onClick={this.addSongToPlaylist}>
        <div className="img-container">
          <img className="artist-img" src={img}></img>
        </div>
        <label id='artist-label'>{title}</label>
      </a>
    );
  }
}


export default PlaylistModalListItem;