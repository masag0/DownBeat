import React from 'react';
import lodash from 'lodash';
import {Howl, Howler} from 'howler';


// const elms = ['track', 'timer', 'duration', 'playBtn', 'pauseBtn', 'prevBtn', 'nextBtn', 'playlistBtn', 'volumeBtn', 'progress', 'bar', 'wave', 'loading', 'playlist', 'list', 'volume', 'barEmpty', 'barFull', 'sliderBtn'];
// elms.forEach(function(elm) {
//   console.log(elm);
//   window[elm] = document.getElementById(elm);
// });

// let sound = new Howl({
//   src: ['http://res.cloudinary.com/masag0/video/upload/v1517354433/Tawk%20Tomahawk%202012/10_nakamarra_rzhjac.mp3']
// });

class Player extends React.Component {
  constructor(props) {
    super(props);

    // this.state = { queue: [], nowPlaying: {} };
    // this.nowPlaying = "";
    this.paused = true;
    this.sound = "";

    this.play = this.play.bind(this);
    this.pause = this.pause.bind(this);
    this.mute = this.mute.bind(this);
  }

  componentDidMount () {
    const sliderBtn = document.getElementById('sliderBtn');
    const volume = document.getElementById('volume-container');
    const barEmpty = document.getElementById('barEmpty');

    this.player = new Player;

    barEmpty.addEventListener('click', function(event) {
      var per = event.layerX / parseFloat(barEmpty.scrollWidth);
      this.player.volume(per);
    });
    sliderBtn.addEventListener('mousedown', function() {
      window.sliderDown = true;
    });
    sliderBtn.addEventListener('touchstart', function() {
      window.sliderDown = true;
    });
    volume.addEventListener('mouseup', function() {
      window.sliderDown = false;
    });
    volume.addEventListener('touchend', function() {
      window.sliderDown = false;
    });

  }

  componentWillReceiveProps (nextProps) {
    console.log(nextProps);

    let nextSound = new Howl({
      src: [nextProps.nowPlaying.link]
    });
    window.sound = nextSound;

    if (this.paused) {
      this.sound = nextSound;
      this.play();
    } else {
      this.pause();
      this.sound = nextSound;
      this.play();
    }
  }

  play () {
    if (this.paused && this.sound) {
      // let newState = lodash.merge({}, this.state);
      // newState['nowPlaying'] = sound;
      // this.setState(newState);
      this.sound.play();
      this.paused = false;
      document.getElementById('playBtn').classList.add('hidden');
      document.getElementById('pauseBtn').classList.remove('hidden');
    }
  }

  pause () {
    if (!this.paused) {
      this.sound.pause();
      // this.props.pauseSong();
      this.paused = true;
      document.getElementById('playBtn').classList.toggle('hidden');
      document.getElementById('pauseBtn').classList.toggle('hidden');
    }
  }

  mute () {
    console.log('mute');
    Howler.volume(0);
  }

  render () {
    let song = "";
    let artist = "";
    let album = "";
    let img = "";

    if (this.props.nowPlaying.title) {
      song = this.props.nowPlaying;
      artist = this.props.nowPlaying.artist;
      album = this.props.nowPlaying.album;

    }
    return (
      <div className="player-container" >
        <aside className='song-info-container'>
          <a className="img-container" href={`/#/albums/${album.id}`}>
              <img className="artist-img" id="song-info-album-img" src={album.img_url}></img>
          </a>
          <div className='song-info-text'>
            <a id="song-info-song-title" href={`/#/albums/${album.id}`}>{song.title}</a>
            <a id="song-info-artist-name" href={`/#/artists/${artist.id}`}>{artist.name}</a>
          </div>

        </aside>

        <div className="controlsOuter">

          <div className="controlsInner">
            <div id="loading"></div>
            <div className="btn" id="shuffleBtn"></div>
            <div className="btn" id="prevBtn"></div>
            <div className="btn" id="playBtn" onClick={this.play}></div>
            <div className="btn hidden" id="pauseBtn" onClick={this.pause}></div>
            <div className="btn" id="nextBtn"></div>
            <div className="btn" id="repeatBtn"></div>
          </div>

          <div id="progress-bar-container">
            <span id="current-time-display"> </span>
            <div id="bar"><div id="progress"></div></div>
            <span id="song-duration-display">{this.formatDuration(this.props.nowPlaying.duration)}</span>
          </div>

        </div>


        <div className="fadeout" id="volume-container">
          <div className="btn" id="playlistBtn"></div>
          <div id="volumeBtn" onClick={this.mute}></div>
          <div id="barFull" className="bar"></div>
          <div id="barEmpty" className="bar"></div>
          <div id="sliderBtn"></div>
        </div>


      </div>
    );
  }

  formatDuration(seconds) {
    if (seconds) {

      let minutes = Math.floor(seconds/60);
      seconds = seconds % 60;
      if (seconds < 10) {
        seconds = "0"+seconds.toString();
      }
      return `${minutes}:${seconds}`;
    } else {
      return "";
    }
  }
}


export default Player;