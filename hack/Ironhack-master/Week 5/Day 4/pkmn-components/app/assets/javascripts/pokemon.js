// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
PokemonApp.Pokemon = function(pokemonUri){
  this.id = this.idFromUri(pokemonUri);
}
PokemonApp.Pokemon.prototype.idFromUri = function(uri){
  var splittedUri = uri.split('/');
  return splittedUri[splittedUri.length-2]
}
PokemonApp.Pokemon.prototype.renderPokemon = function(){
  var pokemon = this;

  $.get('http://pokeapi.co/api/v2/pokemon/' + this.id, function(response){
    pokemon.info = response;
    pokemon.preparePokemonModal(pokemon.info);
    $('.modal').modal('show');
  });
}
PokemonApp.Pokemon.prototype.preparePokemonModal = function(){
  $('.modal-title span').text(this.info.name);
  $('.modal-title small').text('#'+this.info.id);
  $('.dl-horizontal dd:nth-of-type(1)').text(this.info.height);
  $('.dl-horizontal dd:nth-of-type(2)').text(this.info.weight);
}
function getPokemon(){
  var pokemonUri = this.dataset.pokemonUri;
  var pokemon = new PokemonApp.Pokemon(pokemonUri);
  pokemon.renderPokemon()
  // var request = $.get(pokemonUrl, showPokemonModal, 'json');
}
$(function(){
  $('.js-show-pokemon').on('click', getPokemon)
})