var Car = function(model,noise){
	this.model = model;
	this.noise = noise;
	this.wheels = 4;
};

Car.prototype.makeNoise = function () {
	return (this.noise);
};


var coche1 = new Car('toyota','brrbrbbbrbr');
var coche2 = new Car('seat','brrrrrrooommmmmmmmmmm');
console.log(coche1.makeNoise());
console.log(coche2.makeNoise());

