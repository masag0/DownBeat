import React from 'react';
import lodash from 'lodash';
import {NavLink} from 'react-router-dom';
// import AlbumListItem from './album_list_item';

class PlaylistList extends React.Component {
  constructor(props) {
    super(props);

    // this.state = {playlists: {}};

  }

  componentDidMount () {
    this.props.getPlaylists();
  }
  //
  // componentWillReceiveProps ()  {
  //   this.props.getPlaylists().then(
  //
  //     res => this.setState({playlists: res})
  //   );
  // }

  render(){
    let {playlists} = this.props;

    playlists = lodash.values(playlists).filter(el => el.user_id == this.props.currentUser.id);
    playlists = playlists.concat(lodash.values(this.props.followingPlaylists));

    return (
      <ul className="left-nav-playlist-list">
        {
          playlists.map(playlist => {
            return (
                <NavLink
                  key={playlist.id}
                  activeStyle={{color: '#1ef760'}}
                  to={`/playlists/${playlist.id}`}
                >
                  <li className="left-nav-playlist-item">
                    {playlist.title}
                  </li>
                </NavLink>
            );
          })
        }
      </ul>
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
