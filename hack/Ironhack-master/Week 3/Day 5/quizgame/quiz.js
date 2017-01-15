var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

var Question = function(question, answer, points) {
	this.question = question;
	this.answer = answer;
	this.points = points;
};

var Quiz = function() {
	var index = 0;
	var allQuestions = [];
	var totalPoints = 0;

	console.log("----------");
	console.log("Welcome to the Ironhack Quiz!!");
	console.log("----------");

	this.getQuestions = function (questions) {
		allQuestions.push(questions);
		return allQuestions;
	};
	
	this.searchQuestion = function () {
		this.getInput(allQuestions[index].question, allQuestions[index].answer, allQuestions[index].points);
	};

	this.randomQuestion = function () {
		var randomnumber = Math.floor(Math.random()*allQuestions.length);
		return randomnumber 
	};

	this.getInput = function (question, correctAnswer, points) {
		rl.question(question + "\n", function(answer) {
	    console.log("Your answer is: ", answer);
	    	if (correctAnswer !== answer) {
	    		totalPoints -= points;
	    		console.log("Sorry, wrong answer! You have " + totalPoints + ". Try again");
	    		bestquiz.searchQuestion();
	    	}
	    	else if (correctAnswer === answer && index !== 3) {
	    		bestquiz.randomQuestion() === index ? (points = points * 2) + console.log("BONUSx2") : points;
	    		totalPoints += points;
	    		index++;
   	    		console.log("Congrats! You have " + totalPoints);
	    		index >= allQuestions.length ? rl.close() + console.log("Game over!! BYE!!") : bestquiz.searchQuestion();
	    	}
		});
	}; 


	
};

var question1 = new Question("How can you get an input with Ruby?", "gets.chomp", 10)
var question2 = new Question("What type of thing is NaN in Javascript?", "number", 20)
var question3 = new Question("What index is the second element of an array?", "1", 30)


var bestquiz = new Quiz();
bestquiz.getQuestions(question1);
bestquiz.getQuestions(question2);
bestquiz.getQuestions(question3);


bestquiz.searchQuestion();