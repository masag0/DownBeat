import React from 'react';
import PlayerContainer from '../player/player_container';

class FooterAudio extends React.Component {
  constructor(props) {
    super(props);
  }

  render(){
    return (
      <footer id="footer-audio">
        <PlayerContainer />
      </footer>
    );
  }
}


export default FooterAudio;