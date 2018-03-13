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
    this.state = {
      playTime: 0,
      deltaXSeek: 0,
      deltaXVol: 150,
      repeatAll: false,
      repeatOne: false,
      shuffle: false,
    };

    this.clickDisabled = false;
    this.muteState = false;
    this.paused = true;
    this.sound = "";
    this.queue = this.props.queue;
    this.queueNum = 0;

    this.play = this.play.bind(this);
    this.pause = this.pause.bind(this);
    this.mute = this.mute.bind(this);
    this.handleSeekDrag = this.handleSeekDrag.bind(this);
    this.handleVolumeDrag = this.handleVolumeDrag.bind(this);
    this.handleSeekClick = this.handleSeekClick.bind(this);
    this.handleVolumeClick = this.handleVolumeClick.bind(this);
    this.handleNextClick = this.handleNextClick.bind(this);
    this.handlePrevClick = this.handlePrevClick.bind(this);
    this.handleRepeatClick = this.handleRepeatClick.bind(this);
    this.handleShuffleClick = this.handleShuffleClick.bind(this);
  }

  componentDidMount () {
  }

  componentWillReceiveProps (nextProps) {

    clearInterval(this.interval);
    this.setState( { playTime: 0, deltaXSeek: 0 } );
    $('#progress').css('width', 0);

    let queue = nextProps.queue;

    this.orderedQueue = queue;
    //
    // if (this.state.shuffle) {
    //   this.queue = this.shuffle(queue);
    //   this.setState({shuffle: false});
    //   this.queueNum = this.queueNum + 1;
    // } else {
    // }
    this.queue = queue;
    this.queueNum = this.queue.findIndex((el => el.id == nextProps.nowPlaying.id)) + 1;

    let nextSound = new Howl({
      src: [nextProps.nowPlaying.link],
      html5: true,
      onend: () => {
        if (this.state.repeatOne) {
          window.sound.seek(0);
          window.sound.play();
        } else if (this.state.repeatAll && this.queue.length > 0) {
          if (this.queueNum >= this.queue.length ) {
            this.props.playSong(this.queue[0]);
          } else {
            this.props.playSong(this.queue[this.queueNum]);
          }
        } else {
          if (this.queueNum < this.queue.length && this.queue.length > 0) {
            this.props.playSong(this.queue[this.queueNum]);
          }
        }
      }
    });


    if (this.paused) {
      this.sound = nextSound;
      this.play();
    } else {
      window.sound.unload();
      this.sound = nextSound;
      this.play();
    }

    window.sound = nextSound;
  }

  play () {
    if (this.sound) {
      this.sound.play();
      this.paused = false;
      this.props.uiPlay();
      document.getElementById('playBtn').classList.add('hidden');
      document.getElementById('pauseBtn').classList.remove('hidden');

      this.interval = setInterval(
        () => {
          this.setState( {
            playTime: this.sound.seek(),
            deltaXSeek: (this.sound.seek()/this.sound.duration())*600
          } );
          $('#progress').css('width', this.state.deltaXSeek);
        }
        , 50
      );
    }
  }

  pause () {
    if (!this.paused) {
      this.sound.pause();
      this.paused = true;
      this.props.uiPause();
      document.getElementById('playBtn').classList.toggle('hidden');
      document.getElementById('pauseBtn').classList.toggle('hidden');

      clearInterval(this.interval);
    }
  }

  mute () {
    if (this.muteState === true) {
      Howler.volume(this.volume);
      $('#mutedBtn').addClass('hidden');
      $('#volumeBtn').removeClass('hidden');
      this.setState({ deltaXVol: this.volume*150 });
      $('#barFull').css('width', this.volume*150);
      this.muteState = false;
    } else {
      this.volume = Howler.volume();
      Howler.volume(0);
      $('#mutedBtn').removeClass('hidden');
      $('#volumeBtn').addClass('hidden');
      this.setState({ deltaXVol: 0 });
      $('#barFull').css('width', 0);
      this.muteState = true;
    }
  }



  handleVolumeDrag (e) {
    const width = parseInt($('#barEmpty').width())-10;
    const deltaX = parseInt($('#sliderBtn').css("transform").split(',')[4].slice(1));
    const barWidth = deltaX;

    $('#barFull').css('width', barWidth);
    this.setState( { deltaXVol: barWidth } );

    const vol = (barWidth / width);

    if (vol === 0) {
      $('#mutedBtn').removeClass('hidden');
      $('#volumeBtn').addClass('hidden');
      this.muteState = true;
    } else {
      $('#mutedBtn').addClass('hidden');
      $('#volumeBtn').removeClass('hidden');
      this.muteState = false;
    }

    Howler.volume(vol);
  }

  handleVolumeClick (e) {
    e.stopPropagation();
    const barWidth = e.pageX - $('#barEmpty').offset().left;
    const fullWidth = $('#barEmpty').width();
    const vol = barWidth / fullWidth;
    $('#barFull').css('width', barWidth);
    this.setState( { deltaXVol: barWidth } );

    if (vol === 0) {
      $('#mutedBtn').removeClass('hidden');
      $('#volumeBtn').addClass('hidden');
      this.muteState = true;
    } else {
      $('#mutedBtn').addClass('hidden');
      $('#volumeBtn').removeClass('hidden');
      this.muteState = false;
    }

    Howler.volume(vol);
  }


  handleSeekDrag () {
    if (window.sound) {
      const fullWidth = $('#seek-bar').width();
      const barWidth = parseInt($('#sliderBtnSeek').css("transform").split(',')[4].slice(1));
      $('#progress').css('width', barWidth);
      const seekTime = (barWidth / fullWidth) * window.sound.duration();
      this.setState( { deltaXSeek: barWidth } );
      window.sound.seek(seekTime);
    }
  }

  handleSeekClick (e) {
    e.stopPropagation();
    if (window.sound) {
      const barWidth = e.pageX - $('#seek-bar').offset().left;
      const fullWidth = $('#seek-bar').width();
      const seekTime = (barWidth / fullWidth) * window.sound.duration();
      $('#progress').css('width', barWidth);
      this.setState( { deltaXSeek: barWidth});
      window.sound.seek(seekTime);

    }
  }

  handleNextClick (e) {

    if (this.sound) {
      if (this.queueNum < this.queue.length) {
        this.sound.unload();
        this.props.playSong(this.queue[this.queueNum]);
      } else {
        if (this.state.repeatAll) {
          this.sound.unload();
          this.props.playSong(this.queue[0]);
        }
      }
    }
  }

  handlePrevClick (e) {
    if (this.sound) {

      if (this.queueNum > 1 && window.sound.seek() < 4) {
        this.sound.unload();
        this.props.playSong(this.queue[this.queueNum - 2]);
      } else if (window.sound.seek() >= 4) {
        this.props.playSong(this.queue[this.queueNum - 1]);
      } else {
        this.props.playSong(this.queue[this.queueNum - 1]);
      }
    }
  }

  handleRepeatClick (e) {
    if (!this.state.repeatOne && !this.state.repeatAll) {
      $('#repeatBtn').addClass('hidden');
      $('#repeatAllBtn').removeClass('hidden');
      this.setState( { repeatAll: true } );
    } else if (this.state.repeatAll) {
      $('#repeatAllBtn').addClass('hidden');
      $('#repeatOneBtn').removeClass('hidden');
      this.setState( { repeatOne: true, repeatAll: false } );
    } else {
      $('#repeatBtn').removeClass('hidden');
      $('#repeatOneBtn').addClass('hidden');
      this.setState( { repeatOne: false, repeatAll: false });
    }
  }

  handleShuffleClick () {
    if (!this.state.shuffle) {
      $('#shuffleBtn').addClass('hidden');
      $('#shuffleBtnGreen').removeClass('hidden');
      this.setState( { shuffle: true } );

      this.queue = this.shuffle(this.orderedQueue);

    } else {
      $('#shuffleBtn').removeClass('hidden');
      $('#shuffleBtnGreen').addClass('hidden');
      this.setState( { shuffle: false } );

      this.queue = this.orderedQueue;
    }
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
            <div className="btn" id="shuffleBtn" onClick={this.handleShuffleClick}></div>
            <div className="btn hidden" id="shuffleBtnGreen" onClick={this.handleShuffleClick}></div>
            <div className="btn" id="prevBtn" onClick={this.handlePrevClick}></div>
            <div className="btn" id="playBtn" onClick={this.play}></div>
            <div className="btn hidden" id="pauseBtn" onClick={this.pause}></div>
            <div className="btn" id="nextBtn" onClick={this.handleNextClick}></div>
            <div className="btn" id="repeatBtn" onClick={this.handleRepeatClick}></div>
            <div className="btn hidden" id="repeatAllBtn" onClick={this.handleRepeatClick}></div>
            <div className="btn hidden" id="repeatOneBtn" onClick={this.handleRepeatClick}></div>
          </div>



            <div id="progress-bar-container">
              <span id="current-time-display">{this.formatDuration(Math.ceil(this.state.playTime))}</span>


              <Draggable
                axis="x"
                bounds={{top: 0, left: 0, right: 600, bottom: 0}}
                onDrag={this.handleSeekDrag}
                position={{x: this.state.deltaXSeek, y: 0}}
              >
                <div id="sliderBtnSeek" ></div>
              </Draggable>

              <div id="seek-bar" onClick={this.handleSeekClick}>
                <div id="progress"></div>
              </div>


              <span id="song-duration-display">{this.formatDuration(this.props.nowPlaying.duration) || this.formatDuration(0)}</span>
            </div>

        </div>




        <div className="fadeout" id="volume-container">
          <div className="btn" id="playlistBtn"></div>

          <div id="volumeBtn" onClick={this.mute}></div>
          <div id="mutedBtn" className="hidden" onClick={this.mute}></div>

          <div id="barEmpty" className="bar" onClick={this.handleVolumeClick}>
            <div id="barFull" className="bar"></div>
          </div>

          <Draggable
            axis="x"
            bounds={{top: 0, left: 0, right: 150, bottom: 0}}
            onDrag={this.handleVolumeDrag}
            position={{x: this.state.deltaXVol, y: 0}}
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

  shuffle(array) {
    if (array) {
      let counter = array.length;

      while (counter > 0) {
        let index = Math.floor(Math.random() * counter);

        counter--;

        let temp = array[counter];
        array[counter] = array[index];
        array[index] = temp;
      }

      return array;
    }
  }
}


export default Player;