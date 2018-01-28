import React from 'react';

class MainContent extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <section id="main-content">
        <section className="main-content-section featured">
          <h2 className="category-header">Featured</h2>
          <section id="featured-scroll">
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
            <div className="playlist-display"></div>
          </section>
        </section>

        <section className="main-content-section genres">
          <h2>Genres & Moods</h2>
          <section>

          </section>
        </section>
      </section>
    );
  }
}


export default MainContent;