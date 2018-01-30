import React from 'react';
import ArtistIndexItemContainer from './artist_index_item_container';
import ArtistIndexItem from './artist_index_item';

class ArtistIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getAllArtists();
  }

  render(){
    const {artists} = this.props;
    return (
      <section className="main-content-section">
        <h2 className="category-header">Artists</h2>
        <section className='main-index-container'>
          {
            artists.map((artist) => {
              return (
                <ArtistIndexItemContainer
                  key={artist.id}
                  id={artist.id}
                />
              );
            })
          }
        </section>
      </section>
    );
  }
}


export default ArtistIndex;