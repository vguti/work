function addSongCover(response) {
		// console.log("ha entrado en addSongCover")
		var songToPlay = response.tracks.items[0].preview_url
		$('audio').attr('src', songToPlay);
		// console.log("It's alive!")
		var songCover = response.tracks.items[0].album.images[0].url		
	      $('.js-img-substitution').attr('src', songCover);
		addSongTitle(response);	
		addArtistName(response);
	}

	function addArtistName(response) {
		var artistName = response.tracks.items[0].artists[0].name
		$('.js-title').empty();
		$('.js-title').text(artistName);
	}

	function addSongTitle(response) {
		var songTitle = response.tracks.items[0].name
			$('.js-author').empty();
			$('.js-author').text(songTitle);
	}

function getSong(event){
		event.preventDefault();
		var song = $('#search-input').val()
		// This returns us the API url query if the search works
		// console.log('https://api.spotify.com/v1/search?type=track&query=' + song);
		var url = 'https://api.spotify.com/v1/search?type=track&query=' + song 
		var request = $.get(url, 'json')
		request.done(addSongCover)
}

$(function(){
	$('.get_song').on('click', getSong)
	$('.btn-play').on('click', function(event){
		$('.btn-play').toggleClass('playing');
		if ($('.btn-play').hasClass('playing')) {
			$('audio').trigger('play');
		} else {
			$('audio').trigger('pause');
		}
	});
}) 
		
