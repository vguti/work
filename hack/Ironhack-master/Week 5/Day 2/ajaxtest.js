var character = {
	name: 'Ignacio Villanueva',
	occupation: 'Front-end'
}

function handlerCharacters(response){
	console.log(response);
}

var request = $.post('https://ironhack-characters.herokuapp.com/characters', character, 'jason');

request.done(handlerCharacters);

