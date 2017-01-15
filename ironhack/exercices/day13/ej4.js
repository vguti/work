var numbers = '80:70:90:100';
console.log(averageColonn(numbers));

function averageColonn(argument) {
	var a=numbers.split(":");
	var b=a.reduce(function(a, b){return parseInt(a)+parseInt(b)});
	var avg = b / a.length;
	console.log (avg);
}

//.split(/[:&]/) con expresion regular, esta dice que separe por ":" y "&"