import React from 'react';
import PlaylistIconListItem from './playlist_icon_list_item';
import lodash from 'lodash';

class PlaylistIconList extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    // if (!this.props.search) {
    //   this.props.getPlaylists();
    // }
  }

  render(){
    let{playlists} = this.props;
    // if (!this.props.search) {
    //   playlists = lodash.values(playlists)
    //   .filter(el => el.user_id == this.props.currentUser.id);
    // }
    return (
      <section className="main-content-section">
        <h2 className="category-header">Playlists</h2>
        <section className='main-index-container' id="playlist-icon-list">
          {
            playlists.map((playlist) => {
              return (
                <PlaylistIconListItem
                  key={playlist.id}
                  playlist={playlist}
                />
              );
            })
          }
        </section>
      </section>
    );
  }
}


export default PlaylistIconList;