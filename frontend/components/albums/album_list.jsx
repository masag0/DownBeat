import React from 'react';
import AlbumListItem from './album_list_item';

class AlbumList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    this.props.getAlbums(this.props.match.params.artistId);
  }

  componentWillReceiveProps (nextProps) {
    if (nextProps.location.pathname !== this.props.location.pathname){
      this.props.getAlbums(nextProps.match.params.artistId);
    }
  }

  render(){
    if (!this.props.albums) {
      return null;
    }
    const {albums} = this.props;
    return (
      <div>
        <h2 className="category-header">Albums</h2>
        <ul className="main-index-container" >
        {
          albums.map(album => {
            return (
                <AlbumListItem {...album} key={album.id}/>
            );
          })
        }
        </ul>
      </div>
    );
  }
}


export default AlbumList;


// <a className="playlist-display" href={`/#/artists/${id}`}>
//   <div className="img-container">
//     <img className="artist-img" src={img_url}></img>
//   </div>
//   <label id='artist-label'>{name}</label>
// </a>
