var read = require('read');

// options = {
//     prompt: "What's your name?\n>"
// }
// // Our options object, the prompt is simply what will appear in the command line when read is called

// read(options, displayName)
// // The prompt itself, passing options, and using our callback function after input

// function displayName (err, name){
//     console.log("Your name is: " + name)
// }

// // Outputs whatever the user has entered back to the console
var Question = function(statement, answer, id) {
	this.statement = statement;
	this.answer = answer;
	this.id = id;

	function checkAnswer () {
		
	}

	function testStatement (questions) {
		if (checkAnswer(questions[id], answer[id])) {
		  	console.log(questions[id+1])
		} else {
		  	console.log(questions[id])
		}
	}
}

var Quiz = function(questions) {
	this.questions = questions;

	function questionsLoop () {
		for ( var i = 1;  i < 10;  i++) {
			console.log(this.question, this.answer, this.id)
		}
	}

	function throwMeTheQuestion (userQuestion) {
		prompt
	}

	return {
		loopThroughQuestions : questionsLoop
	};
}

var question1 = new Question("Where are we?", "Ironhack", 0);
var question2 = new Question("Where do I live?", "Madrid", 1);
var question3 = new Question("What's my name?", "Ignacio", 2);
var questionsArray = [question1, question2, question3];
// console.log(questionsArray.loopThroughQuestions());

// var question4 = new Question("What food do I like most?", "Rice", 4);
// var question5 = new Question("What's my favourite colour?", "Purple", 5);
// var question6 = new Question("What's my favourite TV show?", "Game of Thrones", 6);
// var question7 = new Question("What's my favourite movie?", "Interstellar", 7);
// var question8 = new Question("What music do I like?", "Rock", 8);
// var question9 = new Question("What do you think about corruption", "Is is a bad thing", 9);
// var question10 = new Question("Why I've started developing websites", "I like CSS", 10);
