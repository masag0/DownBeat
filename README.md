# Downbeat

https://downbeat-app.herokuapp.com

![Main Page](http://res.cloudinary.com/masag0/image/upload/v1518202882/Main_Page_zqsnms.png)

Downbeat is a Spotify inspired web application streaming music player. Using Ruby on Rails, React, Redux, and PostgreSQL, this application was designed and built from the ground up in 10 days.

## Features

* Secure user authentication
* Create, delete, and edit your own playlists
  * Add and remove songs to playlists
* Follow other playlists
* Search for songs, artists, albums, or playlists

## Secure User Authentication

* Uses BCrypt to store secure, salted password digests
* Handles logging in with session tokens
* Includes a guest account for demoing purposes

## Continuous Play
![Sample Gif](https://github.com/masag0/DownBeat/blob/master/app/assets/images/ContPlay.gif)

* Play songs and navigate around the site without stopping playback
* Go to the next or previous song
  * Clicking the next button goes to the next song if there are more songs in the queue, otherwise it does nothing. If repeat all is on, it will play the first song in the queue again.
  * Clicking the previous button after 4 seconds has elapsed restarts the current song for a more intuitive UX
* Seek playback time by dragging or clicking on seek bar
* Adjust volume by clicking on mute button or clicking and dragging volume bar
  * Volume bar remembers it's volume before it was muted and returns to that volume after unmuting
* Repeat and shuffle queued songs
  * Repeat one song
* Displays current song, artist, and album art

The audio player was implemented using Howler.js, a javascript library for web applications. Because Howler has no UI features, the UI for the player was implemented mainly using jQuery, HTML and CSS.

The ability to drag the seek and volume bars was implemented using React Draggable, a wrapper library that uses CSS transforms to allow DOM elements to be draggable. Combined with Howler and jQuery, I was able to give the full UX for the volume and seek bars.

```javascript
  const fullWidth = $('#seek-bar').width();
  const barWidth = parseInt($('#sliderBtnSeek').css("transform").split(',')[4].slice(1));
  $('#progress').css('width', barWidth);
  const seekTime = (barWidth / fullWidth) * window.sound.duration();
  this.setState( { deltaXSeek: barWidth } );
  window.sound.seek(seekTime);
```

## Playlist CRUD

![Playlist CRUD](https://github.com/masag0/DownBeat/blob/master/app/assets/images/PlaylistCRUD.gif)
* Create, Edit, and Delete Playlists

![Add and Remove Songs](https://github.com/masag0/DownBeat/blob/master/app/assets/images/AddRemoveSongs.gif)
* Add and Remove Songs through dropdown menus on each song
  * Adding songs brings up a modal that allows you to choose which playlist to add to or create a new playlist.
* Songs are kept in the order that they were added in playlists.
  * Album songs are kept in track number order.

## Follow other playlists

![Follow Playlists](https://github.com/masag0/DownBeat/blob/master/app/assets/images/Following.gif)

* Follow and unfollow other user playlists and access them immediately via the left nav bar.
* Users cannot edit or remove other users' playlists.
* Users cannot follow their own playlists.

## Search

![Search](https://github.com/masag0/DownBeat/blob/master/app/assets/images/Search.gif)
* Displays all songs, artists, albums, and playlists that match the query.
* Instant search works on key presses, no need to press enter or click a button.
  * Search index auto updates based on query.
* Clearing the search bar and clicking somewhere else navigates you back to where you were before searching.
* React components for song lists, album lists, and artist lists were reused for the search index. Song lists were reused in both album detail and playlist detail views.
* Search uses lodash.debounce to ensure that no race conditions exist.

 If a user types quickly while searching, this would cause slow, early search results based on the beginning of the query string to be displayed instead of the full query string. This is solved by delaying ajax requests until a specified amount of time has passed since the last request.

 ```javascript
 this.dbSearch = lodash.debounce((query) => this.search(query), 250);
 ``

## Enhancements
* Ability to play an album or playlist by clicking its icon
* Add more styling to album and playlist icons
* Add loading spinner
* Let users see their queue and add individual songs to the queue
* Let users friend other users and see all of their playlists
* Let users share links to songs, albums, or artists
* Add notifications after changing playlists, following playlists, friending, or sharing


