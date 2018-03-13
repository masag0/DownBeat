import React from 'react';
import ArtistIndexItemContainer from './artist_index_item_container';
import ArtistIndexItem from './artist_index_item';


class ArtistIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    if (!this.props.search) {
      this.props.getAllArtists();
    }
  }

  render(){
    const {artists} = this.props;
    artists.sort((a, b) => {
      if(a.name < b.name) return -1;
      if(a.name > b.name) return 1;
      return 0;
    });

    return (
      <section className="main-content-section">
        <h2 className="category-header">Artists</h2>
        <section className='main-index-container'>
          {
            artists.map((artist) => {
              return (
                <ArtistIndexItemContainer
                  artist={artist}
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