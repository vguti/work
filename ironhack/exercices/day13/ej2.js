var exampleArray =[2,-5,10,5,4,-10,0];

function process(data){
	var positions = [];
	data.forEach (function(a,i){
		data.forEach (function(b,j){
			if (a+b ===0) {positions.push(i+","+j)}
				console.log("sumando estos numeros el resultado es 0:"i","j)
		});
	});
console.log("you can sum these pairs of numbers and get zero:");
console.log(positions);
}






process(exampleArray);

