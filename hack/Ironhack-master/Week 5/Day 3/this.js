var Animal = function(name,noise){
    this.name = name;
    this.noise = noise;

    this.makeNoise = function(){
        console.log(this.noise + "!!!");
    }
}
Animal.prototype.makeNoise = function(){}

Animal.prototype.startNoise = function(){
    setInterval(this.makeNoise,5);
};

var myAnimal = new Animal ("Gorilla", 5);

myAnimal.startNoise()

//=> undefined