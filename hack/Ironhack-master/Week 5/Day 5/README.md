First download the skeleton for the player. This is the [link](https://github.com/ironhack/spotify-skeleton).


## Iteration #1: Song search

Add a search form to the index.html page.
When user searches, search the Spotify API for songs matching the search term. Remember AJAX Requests.
From the search results, take the song title, artist name and cover image from the first result.
Update the player in the HTML with the song and artist info.

## Iteration #2: Audio playback

The <audio> tag

All an <audio> tag needs to play audio is a src attribute. The src attribute needs to be the URL to an audio file that the browser can play. For example, an mp3:

```html
<audio src="https://example.com/song.mp3" class="js-player"></audio>
```

Now you can use jQuery to trigger playback whenever you want:

```html
// Play audio
$('.js-player').trigger('play');
``

You trigger playback by selecting the <audio> tag itself.

+ When the user searches, add the song's preview to the <audio> tag's src.
+ When the user clicks the play button, select the <audio> tag with jQuery and trigger playback.
+ Update the play button's appearance by adding the playing class.
+ When the user clicks again, trigger a pause on the audio element.
+ When pausing remove the play button's playing class
+ Once your click event is set up, remove the disabled class from the play button.
+ When you want to pause, you also use jQuery's .trigger() function:

```javascript
// Pause audio
$('.js-player').trigger('pause');
```

## Iteration #3: Progress bar

The <audio> tag has a timeupdate event that notifies you as the playback time progresses.
Listen for the timeupdate event and update the progress bar's value attribute with the tag's currentTime.
The <audio> element can tell you the current playback time with the currentTime property:

```javascript
$('.js-player').prop('currentTime');
```

That isn't too useful on its own, but in conjunction with the timeupdate event it can be. If you register a callback on the element's timeupdate event, your function will be called several times as the currentTime changes.

```javascript
// Define a function to print the player's current time
function printTime () {
  var current = $('.js-player').prop('currentTime');
  console.debug('Current time: ' + current);
}

// Have printTime be called when the time is updated
$('.js-player').on('timeupdate', printTime);
```

## Bonus Iteration #1: Artist modal

+ Make the artist name a button or link.
+ When a user clicks the artist name, make a request to the Spotify API to get the artist's information.
+ Show a Bootstrap modal containing the artist's name, photo, genres, followers and popularity.

**Bootstap's modal**

To use Bootstrap's modal, you need to add some HTML for the modal to your page.

```html
<div class="modal fade js-modal">
  <div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header">
        <!-- Close button -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span>&times;</span>
        </button>

        <h2>This is the modal's header.</h2>
      </div>

      <div class="modal-body">
        <p>This is the modal's body.</p>
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
```

Yes you do need all those <div> tags. Replace the modal-header and modal-body content with what you require.

With your modal in the HTML, you can now select it and open it like this:

```javascript
$('.js-modal').modal("show");
``

## Bonus Iteration #2: Other search results

Instead of always grabbing the first track in the Spotify track search, let's provide users a way to select a different result of they desire.

+ Add a See more results button to your page.
+ When a user clicks on that button, show a new modal with all the results of the tracks search you performed previously.
+ When a user clicks on one of the track names, update the player with that track's information, including its audio.

## Bonus Iteration #3: Artist's albums

Let's combine some of the features of our previous Spotify exercise with this one. We can show the artist's albums from the artist modal.

+ Add a See David Bowie's albums button the the artist modal. Where you would replace David Bowie with the name of the current artist.
+ When you click the See albums button, show a modal with the list of the current artist's albums.
+ The list of albums should contain the album name, the album's cover image and the year it was released.