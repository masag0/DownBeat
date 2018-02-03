import React from 'react';
import PlaylistModalListItemContainer from './playlist_modal_list_item_container';


class PlaylistModalList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.getPlaylists();
  }

  render(){
    console.log(this.props);
    const {playlists} = this.props;
    return (
      <section className="main-content-section">
        <h2 className="category-header">Playlists</h2>
        <section className='main-index-container'>
          {
            playlists.map((playlist) => {
              return (
                <PlaylistModalListItemContainer
                  key={playlist.id}
                  id={playlist.id}
                  close={this.props.close}
                  songId={this.props.songId}
                />
              );
            })
          }
        </section>
      </section>
    );
  }
}


export default PlaylistModalList;