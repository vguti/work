function Viking(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;

	//console.log(this.name + " has " + health + " points of life and hits with " + strength + " strength!");

	function howHardVikingStrikes () {
		return strength * 0.5;
	}
	//console.log("  =>  Viking " + name + " hit with " +  strength * 0.5 + " of strength");
	//console.log("--------------------");

	return {
		health : health,
		strength : strength,
		attack : howHardVikingStrikes
	};
}

function Pit(vikingOne, vikingTwo) {
	this.turns = 8;
	this.vikingOne = vikingOne;
	this.vikingTwo = vikingTwo;

	function vikingsFight () {
		vikingOne.health -= vikingTwo.attack();
		return(vikingOne.health);
	}

	return {
		fight : vikingsFight
	};
}

var magnus = new Viking("Magnus", 64, 5);
var reinier = new Viking("Reinier", 73, 6);
var marcos = new Viking("Marcos", 40, 2);
var a  = new Pit(marcos, magnus);

console.log("The viking have now: " + a.fight());

// bucle while => el ataque del vikingOne sea >= que vikingTwo.health o lo contrario

