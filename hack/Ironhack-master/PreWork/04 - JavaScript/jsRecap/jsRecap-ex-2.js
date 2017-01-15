// EXERCISE

// Write a function that recives a string of numbers separated by colons.
// Have the function turn that string into an array of numbers and calculate their average.
// Average = Sum/N => (1 + 2 + 3)/3 = 2;

// var numbers = '80:70:90:100'.split(":"); => Splits the array into strings splited by :
// You get an array of strings => var numbers = ["80", "70", "90", "100"]
var numbers = '80:70:90:100'.split(":");
var i;
// This for converts the array of strings numbers into Integers
for(i=0; i<numbers.length; i++){
	numbers[i] = +numbers[i];
}

function avgNumbers() {
  var sum = 0;
  for (var index = 0, length = numbers.length; index < length; index += 1) {
    sum += numbers[index];
  }
  // This returns the average of dividing the sum of every element in numbers by its length (4) 
  return sum / length;
}

avgNumbers();