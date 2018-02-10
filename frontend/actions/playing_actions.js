export const PLAY_SONG = 'PLAY_SONG';
export const PAUSE_SONG = 'PAUSE_SONG';
export const ADD_SONG_TO_QUEUE = 'ADD_SONG_TO_QUEUE';
export const ADD_SONGS_TO_QUEUE = 'ADD_SONGS_TO_QUEUE';

export const playSong = (song) => ({
  type: PLAY_SONG,
  data: song
});

export const pauseSong = (song) => ({
  type: PAUSE_SONG,
  data: song
});

export const addSongToQueue = (song) => ({
  type: ADD_SONG_TO_QUEUE,
  data: song
});

export const addSongsToQueue = (songs) => ({
  type: ADD_SONGS_TO_QUEUE,
  data: songs
});

