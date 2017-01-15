// EXERCISE


// Write a function that takes an array of numbers. Return every pair of positions where the addition of numbers sums to zero.


// Positions:      0   1    2  3  4     5  6
var exampleArray = [2, -5, 10, 5, 4, -10, 0];

proces = function(array){
var results = [];

	for (var a = 0; a<array.length; a++){
		for (var b = a; b<array.length; b++){
			if(array[a]+array[b]===0){
				results.push(a+ "," +b);
			}
		}
	}
	console.log(results);
}
var finalResult = proces(exampleArray);

//=> [ "1,3" , "2,5" , "6,6" ]