var exampleArray =[2,-5,10,5,4,-10,0];

function process(data){
	var positions = [];
	data.forEach (function(a,i){
		data.forEach (function(b,j){
			if (a+b ===0) {positions.push(i+","+j);
		}
	}
	}
	for (k=0, k<positions.lenth; k++){
		console.log("sumando" + positions[i]);
	}
	
}






process(exampleArray);


 it("may return arrays that contains closures and so on", function(){
        function example(){
           // write the missing code here
                  return [function(v){
                if v=1{
                    return[1,10]
                }
                else if{
                    v=2
                    return[1,11]
                }
                else if{
                    v=3
                return[1,12]
            	}

           }]
        }
        
        expect(example()[0](1)[1]).toEqual(10);
        expect(example()[0](2)[1]).toEqual(11);
        expect(example()[0](3)[1]).toEqual(12);
    });