import React from 'react';
import lodash from 'lodash';
import {Howl, Howler} from 'howler';
import Draggable from 'react-draggable';

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
    this.state = { playTime: 0, deltaXSeek: 0 };

    this.muteState = false;
    this.paused = true;
    this.sound = "";
    this.queue = this.props.queue;
    this.play = this.play.bind(this);
    this.pause = this.pause.bind(this);
    this.mute = this.mute.bind(this);
  }

  componentDidMount () {
    // const sliderBtn = document.getElementById('sliderBtn');
    // const volume = document.getElementById('volume-container');
    // const barEmpty = document.getElementById('barEmpty');

  }

  componentWillReceiveProps (nextProps) {
    console.log(nextProps);
    this.setState( { playTime: 0 } );
    clearInterval(this.interval);

    let nextSound = new Howl({
      src: [nextProps.nowPlaying.link],
      html5: true
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
    this.interval = setInterval(
      () => {
        this.setState( {playTime: nextSound.seek()});

      }
      , 1000
    );
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
    if (this.muteState === true) {
      Howler.volume(this.volume);
      $('#mutedBtn').addClass('hidden');
      $('#volumeBtn').removeClass('hidden');
      this.muteState = false;
    } else {
      this.volume = Howler.volume();
      Howler.volume(0);
      $('#mutedBtn').removeClass('hidden');
      $('#volumeBtn').addClass('hidden');
      this.muteState = true;
    }
  }



  handleVolumeDrag (e) {
    const width = parseInt($('#barEmpty').width());
    const deltaX = parseInt($('#sliderBtn').css("transform").split(',')[4].slice(1));
    const barWidth = width + deltaX;
    $('#barFull').css('width', barWidth);
    const vol = (barWidth / width);
    Howler.volume(vol);
  }

  handleSeekDrag () {
    const barWidth = parseInt($('#sliderBtnSeek').css("transform").split(',')[4].slice(1));
    $('#progress').css('width', barWidth);
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
              <span id="current-time-display">{this.formatDuration(Math.ceil(this.state.playTime))}</span>


              <Draggable
                axis="x"
                bounds={{top: 0, left: 0, right: 600, bottom: 0}}
                onDrag={this.handleSeekDrag}
              >
                <div id="sliderBtnSeek"></div>
              </Draggable>

              <div id="seek-bar">
                <div id="progress"></div>
              </div>


              <span id="song-duration-display">{this.formatDuration(this.props.nowPlaying.duration) || this.formatDuration(0)}</span>
            </div>

        </div>




        <div className="fadeout" id="volume-container">
          <div className="btn" id="playlistBtn"></div>

          <div id="volumeBtn" onClick={this.mute}></div>
          <div id="mutedBtn" className="hidden" onClick={this.mute}></div>

          <div id="barEmpty" className="bar">
            <div id="barFull" className="bar"></div>
          </div>

          <Draggable
            axis="x"
            defaultPosition={{x: -10, y: 0}}
            bounds={{top: 0, left: -160, right: -10, bottom: 0}}
            onDrag={this.handleVolumeDrag}
          >
            <div id="sliderBtn" ></div>
          </Draggable>


        </div>


      </div>
    );
  }

  formatDuration(seconds) {
    if (seconds || seconds === 0) {

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