var Car = function(model, noise, wheels) {
	this.model = model;
	this.noise = noise;
	this.wheels = wheels;

	this.carModel = function () {
		console.log(this.model + "Mercedes A3");
	}

	this.carNoise = function () {
		console.log(this.noise + 'Brrr!')
	}

	this.carWheels = function () {
		console.log(this.wheels + "Have 4")
	}
}