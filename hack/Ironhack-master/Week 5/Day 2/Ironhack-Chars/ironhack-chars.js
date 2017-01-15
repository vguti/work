function fetch(){
    var request = $.get('https://ironhack-characters.herokuapp.com/characters');
    request.done(handle);
    function handle(response){
        for(i=0, length = response.length; i < length; i++){
            $(".characters").append("<li>" + response[i].name + "</li>")
        }
    }
}

$(".getCharacters").on("submit", function(event){
    event.preventDefault();
    fetch();
})