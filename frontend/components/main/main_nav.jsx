import React from 'react';

class MainNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <nav id="main-nav">
        <h1>Overview</h1>
        <h1>Featured</h1>
        <h1>Genres and Moods</h1>
        <h1>Artists</h1>
        <h1>Albums</h1>
        <h1>Songs</h1>
      </nav>
    );
  }
}

export default MainNav;