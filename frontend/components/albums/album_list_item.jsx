import React from 'react';
// import AlbumListItem from './album_list_item';

class AlbumListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const {id, title, description, img_url, duration, year, artist_id, genre} = this.props;
    return (
      <a className="playlist-display" href={`/#/albums/${id}`}>
        <div className="img-container">
          <img className="artist-img" src={img_url}></img>
        </div>
        <label id='artist-label'>{title}</label>
      </a>
    );
  }
}


export default AlbumListItem;