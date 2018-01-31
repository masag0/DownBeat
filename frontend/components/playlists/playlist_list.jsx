import React from 'react';
// import AlbumListItem from './album_list_item';

class PlaylistList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    // this.props.getplaylists();
  }

  render(){
    const {playlists} = this.props;
    return (
      <div>
        {/*
          albums.map(album => {
            return (
                <PlaylistListItem {...album} key={album.id}/>
            );
          })
        */}
      </div>
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
