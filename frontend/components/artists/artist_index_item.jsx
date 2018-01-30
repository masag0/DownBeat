import React from 'react';

class ArtistIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    const {id, name, genre, description, img_url} = this.props.artist;
    return (
      <a className="playlist-display" href={`/#/artists/${id}`}>
        <div className="img-container">
          <img className="artist-img" src={img_url}></img>
        </div>
        <label id='artist-label'>{name}</label>
      </a>
    );
  }
}


export default ArtistIndexItem;