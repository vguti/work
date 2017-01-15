function decoder(list){
	var index = 0;
	var secretMessage = '';

	for (var i = 0; i < list.length; i++) {
		secretMessage += list[i][index];
		index = (index + 1) % 5;
	}
	return secretMessage;
}

words = [
    "dead",         // 1st -> d
    "bygone",       // 2nd -> y
    "landing",      // 3rd -> n
    "cheaply",      // 4th -> a
    "assumed",      // 5th -> m
    "incorrectly",  // 1st -> i
    "attention",    // 2nd -> t
    "agent"         // 3rd -> e
];

// message should be "dynamite"
message = decoder(words);
console.log(message);