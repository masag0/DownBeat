import React from 'react';

class MainNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <nav id="main-nav">
        <a href="/#/" className="main-nav-link"><h1>Overview</h1></a>
        <a href="/#/featured" className="main-nav-link" ><h1>Featured</h1></a>
        <a href="/#/genres" className="main-nav-link" ><h1 id="genre-main-header">Genres & Moods</h1></a>
        <a href="/#/artists" className="main-nav-link"><h1>Artists</h1></a>
        <a href="/#/albums" className="main-nav-link"><h1>Albums</h1></a>
      </nav>
    );
  }
}

export default MainNav;


// <a href="/#/songs" className="main-nav-link"><h1>Songs</h1></a>


// <a href="/#/featured" className="main-nav-link"><h1>Featured</h1></a>
