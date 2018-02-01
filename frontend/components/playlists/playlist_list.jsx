import React from 'react';
// import AlbumListItem from './album_list_item';

class PlaylistList extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount () {
    this.props.getPlaylists();
  }

  handleClick (id) {
    // this.props.getPlaylistSongs(id);
  }

  render(){
    const {playlists} = this.props;
    return (
      <ul className="left-nav-playlist-list">
        {
          playlists.map(playlist => {
            return (
                <a
                  key={playlist.id}
                  href={`/#/playlists/${playlist.id}`}
                  onClick={(e) => this.handleClick(playlist.id)}
                >
                  <li className="left-nav-playlist-item">
                    {playlist.title}
                  </li>
                </a>
            );
          })
        }
      </ul>
    );
  }
}


export default PlaylistList;


// <a className="playlist-display" href={`/#/artists/${id}`}>
//   <div className="img-container">
//     <img className="artist-img" src={img_url}></img>
//   </div>
//   <label id='artist-label'>{name}</label>
// </a>
