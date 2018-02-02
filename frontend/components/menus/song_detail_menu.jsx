import React from 'react';

class SongDetailMenu extends React.Component {
  constructor(props) {
    super(props);

    this.menuHoverEnter = this.menuHoverEnter.bind(this);
    this.menuHoverLeave = this.menuHoverLeave.bind(this);
    this.addToPlaylist = this.addToPlaylist.bind(this);
  }

  addToPlaylist () {
    this.props.addSong(this.props.playlistId, this.props.songId);
  }


  menuHoverEnter () {
    const menu = document.getElementById(`#${this.props.songId}`);
    menu.classList.remove("hidden");
  }

  menuHoverLeave () {
    const menu = document.getElementById(`#${this.props.songId}`);
    menu.classList.add("hidden");
  }

  render(){
    return (

    );
  }
}


export default SongDetailMenu;



