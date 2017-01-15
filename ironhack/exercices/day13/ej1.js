var exampleArray =[2,-5,10,5,4,-10,0];
console.log(positions);

function process(data){
	var positions = [];
	data.forEach (function(a,i){
		data.forEach (function(b,j){
			if(j<=i) {
			if (a+b ===0) {positions.push(i+","+j)} 
			}
		});
	});
	return positions
}








//