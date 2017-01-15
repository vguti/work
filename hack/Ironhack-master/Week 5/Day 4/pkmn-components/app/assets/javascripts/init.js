// If you hace a PokemonApp you do nothing, if not, you create an empty object
if(window.PokemonApp === undefined){
  window.PokemonApp = {};
}

PokemonApp.init = function(){
  console.log('PokemonApp Online!!');
}

$(document).on('ready', function(){
  PokemonApp.init();
})