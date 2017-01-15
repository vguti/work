var decoder = require("./decoder.js");
var sentence1 = require("./secretMessage.js");
var sentence2 = require("./secretMessage.js");
var sentence3 = require("./secretMessage.js");
var sentence4 = require("./secretMessage.js");
var sentence5 = require("./secretMessage.js");


var sentence, message;
sentence = "fill the proper tank for the cow";
message = super_decoder(sentence,"even","forwards");
console.log(message);


function super_decoder(sentence, type, forwards) {
	var forwards = forwards || false;
	var words = [];
	if (type === "every") {
		words = sentence.split(" ");
	} else if (type === "odd") {
		words = sentence.split(" ").filter(function (word, index) {
			return index % 2 != 0;
		});
	} else if (type === "even") {
		words = sentence.split(" ").filter(function (word, index) {
			return index === 0 || index % 2 === 0;
		});
	}

	if (forwards) {
		return decoder(words);
	} else {
		return decoder(words.reverse());
	}
}






