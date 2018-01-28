import React from 'react';

class RightNav extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <nav id="right-nav">
        <section>
          <h1>Friends</h1>
          <br />
          <br />
          <br />
          <h1>Friend 1</h1>
          <br />
          <h1>Friend 2</h1>
          <br />
          <h1>Friend 3</h1>
          <br />
          <h1>Friend 4</h1>
          <br />
          <h1>Friend 5</h1>
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
          <br />
        </section>

        <section>
          <div id="new-playlist-container">
            <h1>Add Friend</h1>
          </div>
        </section>
      </nav>
    );
  }
}


export default RightNav;