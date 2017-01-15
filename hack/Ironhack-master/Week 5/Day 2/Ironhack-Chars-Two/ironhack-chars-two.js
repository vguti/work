$(document).ready(function() {

	$('#get_chars').on('click', getCharacters)

	$('#post_chars').on('submit', postCharacter)



	function getCharacters(){
		var request = $.get('https://ironhack-characters.herokuapp.com/characters');
		request.done(addCharactersToList);
	}

	function addCharactersToList(request){
		request.forEach(function(element){
			$('.char-list').append('<li>' + element.name + '</li>');
		})
	}

	function postCharacter(event){
		event.preventDefault();

		var character={
			name: $('#name').val(),
			occupation: $('#occupation').val(),
			weapon: $('#weapon').val()
		}

		var response = $.post('https://ironhack-characters.herokuapp.com/characters', character)

		response.done(console.log("added " + name + " to the database!"))
		response.fail(console.log("something went wrong"))
	}
});