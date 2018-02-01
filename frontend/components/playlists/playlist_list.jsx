import React from 'react';
// import AlbumListItem from './album_list_item';

class PlaylistList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    this.props.getPlaylists();
  }

  render(){
    const {playlists} = this.props;
    return (
      <ul className="left-nav-playlist-list">
        {
          playlists.map(playlist => {
            return (
                <a key={playlist.id} href={`/#/playlists/${playlist.id}`}>
                  <li
                    className="left-nav-playlist-item"
                  >
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
