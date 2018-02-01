import React from 'react';

class AlbumListItem extends React.Component {
  constructor(props) {
    super(props);
  }

  // componentDidMount () {
  //   this.props.getAlbum(this.);
  // }

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