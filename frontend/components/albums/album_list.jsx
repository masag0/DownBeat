import React from 'react';
import AlbumListItemContainer from './album_list_item_container';

class AlbumList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount () {
    if (!this.props.search) {
      if (this.props.match.params.artistId) {
        this.props.getAlbums(this.props.match.params.artistId);
      } else {
        this.props.getAllAlbums();
      }
    }
  }

  componentWillReceiveProps (nextProps) {
    if (!this.props.search) {
      if (nextProps.match.params.artistId && nextProps.location.pathname !== this.props.location.pathname){
        this.props.getAlbums(nextProps.match.params.artistId);
      }
    }
  }

  render(){
    if (!this.props.albums) {
      return null;
    }
    const {albums} = this.props;

    albums.sort((a, b) => a.title > b.title);

    return (
      <div>
        <h2 className="category-header">Albums</h2>
        <ul className="main-index-container" >
        {
          albums.map(album => {
            return (
                <AlbumListItemContainer
                  id={album.id}
                  key={album.id}
                />
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
