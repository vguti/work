var exampleArray = [2, -5, 10, 5, 4, -10, 0];
var pairs = [];

for (var i = 0; i < exampleArray.length; i++) {
	for (var j = 0;  j < exampleArray.length; j++) {
		if (exampleArray[i] + exampleArray[j] === 0) {
			pairs.push('(' + exampleArray[i] + ',' + exampleArray[j] + ')');
		}
	}
}

console.log(pairs);