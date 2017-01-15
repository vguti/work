$(document).ready(function(){

	$('.get_artist').on('click', getArtist)

	function getArtist(){
		var artist = $('#name').val()
		var url = 'https://api.spotify.com/v1/search?type=artist&query=' + artist 
		
		$('.artist_list').empty();

		var request = $.get(url,"json");
		request.done(handleArtist)
	}

	function addArtistToList(response){
		response.artists.items.forEach(function(artist){
			$('.artist_list').append('<li>' + '<a class="artist list" href="https://api.spotify.com/v1/artists/'+ artist.id +'/albums">' + artist.name +'</li>');
		})
	}
	function handleArtist(response){
		var source_url = response.artists.items[0].images[0].url

		$('.image-div').append('<img src=' + source_url + '>')
		addArtistToList(response)
	}

	$('.artist_list').on('click','.artist', function(event){
	
		event.preventDefault();
		$('.image-div').empty();

		var request = $.get(event.currentTarget.href, "json");
		request.done(addalbumToList)
	})

	function addalbumToList(response){
		console.log(response)
		
		response.items.forEach(function(album){
			$('.artist_album_list').append('<li><a class="album artist" href=https://api.spotify.com/v1/albums/' + album.id + '/tracks>'+  album.name + '<img src=' + album.images[0].url + '> </li>');
		})
	}
 
	$('.artist_album_list').on('click','.album', function(event){
		
		event.preventDefault();
		var request = $.get(event.currentTarget.href, "json");

		request.done(addaTrackToList)
	})
	
	function addaTrackToList(response){
		console.log(response)
		response.items.forEach(function(track){
			$('.album_track_list').append('<li><a class="album track" target="_blank" href=' +track.preview_url + '>' + track.name + '</li>');
		})
	}
});


	

