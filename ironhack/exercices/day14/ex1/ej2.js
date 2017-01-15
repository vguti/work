var fs = require('fs');

//fs.writeFile(file,data[,options],callback)



function averageColon(error,content) {
	var a = content.split(":");
	var b = a.reduce(function(a, b){return parseInt(a)+parseInt(b)});
	var avg = b / a.length;
			fs.writeFile('result.txt',avg,'utf8',myFunction);
}

function myFunction(){

}

fs.readFile('file.txt','utf8',averageColon);







