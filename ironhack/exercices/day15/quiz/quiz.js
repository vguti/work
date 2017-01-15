var read = require('read');

var Question = function(id,quest,answer) {
	this.id = id;
	this.quest = quest;
	this.answer = answer;
}

var Quiz = function() {
	var arrQuestions = [];
	
	this.getQuestions = function (questions) {
		arrQuestions.push(questions);
		console.log(arrQuestions);
		//return arrQuestions;
	};
	
	//this.searchQuestion = function () {
	//	this.getInput(allQuestions[index].question, allQuestions[index].answer, allQuestions[index].points);
	//};

		
};


var q1 = new Question(0,'2+2?','4');
var q2 = new Question(1,'capital de España?','Madrid');
var q3 = new Question(2,'best bootcamp?','Ironhack');

var quiz1 = new Quiz();

quiz1.getQuestions(q1);
quiz1.getQuestions(q2);
quiz1.getQuestions(q3);








/*
options = {
    prompt: "What's your name?\n>" 
}
// Our options object, the prompt is simply what will appear in the command line when read is called

read(options, displayName)
// The prompt itself, passing options, and using our callback function after input

function displayName (err, name){
    console.log("Your name is: " + name)
}
// Outputs whatever the user has entered back to the console
*/