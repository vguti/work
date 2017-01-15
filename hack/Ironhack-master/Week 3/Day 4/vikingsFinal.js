function Viking(name, health, strength) {
	this.name = name;
	this.health = health;
	this.strength = strength;

	function howHardVikingStrikes () {
		return strength * 0.5;
	}

	return {
		health : health,
		strength : strength,
		name : name,
		attack : howHardVikingStrikes
	};
}

function Pit(vikingOne, vikingTwo) {
	this.turns = 8;
	this.vikingOne = vikingOne;
	this.vikingTwo = vikingTwo;

	while (vikingOne.attack <= vikingTwo.health || vikingTwo.attack <= vikingOne.health) {
		function firstFight () {
			vikingOne.health -= vikingTwo.attack();
			// console.log("  =>  " + vikingOne.name + " has " + vikingOne.health + " points of health.");
			return vikingOne.health;
		}

		function secondFight () {
			vikingTwo.health -= vikingOne.attack();
			// console.log("  =>  " + vikingTwo.name + " has " + vikingTwo.health + " points of health.");
			return vikingTwo.health;
		}
	}

	return {
		fightOne : firstFight,
		fightTwo : secondFight
	};
}

var magnus = new Viking("Magnus", 64, 5);
var reinier = new Viking("Reinier", 73, 6);
var marcos = new Viking("Marcos", 40, 2);
var vikingHealth  = new Pit(reinier, magnus);
console.log("First Viking has now: " + vikingHealth.fightOne() + " points of life.");
console.log("Second Viking has now: " + vikingHealth.fightTwo() + " points of life.");

// bucle while => el ataque del vikingOne sea >= que vikingTwo.health o lo contrario

