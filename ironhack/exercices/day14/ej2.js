var Lluis = function (heigth,weigth,haircolor){
	this.heigth = heigth;
	this.weigth = weigth;
	this.haircolor = 'brown';
}

Lluis.prototype.sayBullshit = function () {
	return "el barsa es una mierda!!!";

}

var lluisfibrao = new Lluis(1.92,85);
var vagolluis = new Lluis(1.29,120);

console.log(lluisfibrao.sayBullshit());
console.log(vagolluis.sayBullshit());