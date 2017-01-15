var fs = require('fs');

//fs.writeFile(file,data[,options],callback)



function averageColon(error,content) {
	


	arr=[];
	arr=content.filter(function(elem,pos){
		avg = arr.indexOf(elem)==pos;
		fs.writeFile('result.txt',avg,'utf8');
	});
		

	
}

fs.readFile('file.txt','utf8',averageColon);



/*

var arrayOriginal = ['mike','james','james','alex'];
var arraySinDuplicados = [];
var arraySinDuplicados = arrayOriginal.filter(function(elem, pos) {
   return arrayOriginal.indexOf(elem) == pos;
});


function averageColon(error,content) {
	var a = content.split(":");
	var b = a.reduce(function(a, b){return parseInt(a)+parseInt(b)});
	var avg = b / a.length;
			fs.writeFile('result.txt',avg,'utf8');
}
*/








