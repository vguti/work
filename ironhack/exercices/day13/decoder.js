

function decoder(words) {
	var index = 0;
	var secretMessage = "";
	for (i=0 ; i < words.length; i++){
		secretMessage += words[i].charAt(index);
		index = (index+1) % 5; //forma mas elegannte, en vez de usar un if.
	}
	
	return secretMessage;
}

var words, message, words2;
words = ["dead","bygone","landing","cheaply","assumed","incorrectly","attention","agent"];
//dynamite
words2 = ["January","lacks","caveats","hazardous","DOORS","crying","arrogantly","climate","proponent","rebuttal"];
message = decoder(words);
console.log(message);

module.exports = decoder;
