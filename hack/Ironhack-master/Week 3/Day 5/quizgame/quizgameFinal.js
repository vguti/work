// Helped by Reinier!!!!!
var Quizz = function(questions, correctAnswers) {
	this.questions = questions;
	this.correctAnswers = correctAnswers;

}



var QuizzController = function(quiz, id) {
	this.quiz = quiz;
	this.id=id;

	this.quizzFlow = function (){
		if(this.id<this.quiz.questions.length){
			var userAnswer = askQuestion();
			if (checkAnswer(userAnswer)){
				this.id++;
				this.quizzFlow();
			}else{
				this.quizzFlow();
			}
		}else{
			console.log("You answered all questions correctly")
			return
		}

	}
	
	function askQuestion(){

		return prompt(this.quizz.question[id])
		

	}

	function checkAnswer(userAnswer){
		if(userAnswer==this.quiz.correctAnswers[index]){
			return true
		}else{
			return false
		}
	}
}

var questions = ["Where are we?","Where are we not?","Where are we?","Where are we not?"]
var answers = ["Madrid","Amsterdam","Madrid","Amsterdam"]
ourQuizz = new Quizz(questions, answers)
controller = new QuizzController(ourQuizz,0)

controller.quizzFlow();

