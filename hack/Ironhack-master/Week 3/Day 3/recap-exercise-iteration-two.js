function getZeroSums(array){
	var pairs = [];
	for (var i = 0; i < array.length; i++) {
		for (var j = 0;  j < array.length; j++) {
			if (array[i] + array[j] === 0) {
				pairs.push('(' + array[i] + ',' + array[j] + ')');
			}
		}
	}
}

var exampleArray = [2, -5, 10, 5, 4, -10, 0];

console.log(getZeroSums(exampleArray));