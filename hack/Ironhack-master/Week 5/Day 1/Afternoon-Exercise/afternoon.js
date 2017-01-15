var phrases = [
	'Si muero, dejad el balcón abierto.',
	'El niño come naranjas.',
	'(Desde mi balcón lo veo).',
	'El segador siega el trigo.',
	'(Desde mi balcón lo siento).',
	'¡Si muero, dejad el balcón abierto!'
];

$('p').replaceWith('<p>' + phrases[Math.floor(Math.random()*(phrases.length))] + '</p>');
$('.btn').click(function () {
	$('p').replaceWith('<p>' + phrases[Math.floor(Math.random()*(phrases.length))] + '</p>');
});

$('.my-input').keypress(function(event){
	if(event.which == 13) {
       	event.preventDefault();
       	phrases.push($('input').val());		
       }  
});

$('a').on('click', function(){
	for(var i = 0; i < phrases.length; i++){
		$('a').after('<p class="' + i + '"><span id="' + i + '">X</span>' + phrases[i] + '</p>');
	}
});

// $('span').on('click', function(){
// 	$('child-selector').parent().remove();
// }