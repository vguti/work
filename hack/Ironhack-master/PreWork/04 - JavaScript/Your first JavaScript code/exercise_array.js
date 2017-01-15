var names;

names = [ "Canada", "Mexico", "Turkey", "Japan", "Spain", "USA", "United Kingdom", "Germany" ];

// First of all, you need a function that takes a parameter:

// Define a variable (eg. var nameString = "") and then you can use a simple for loop:

function arrayString(array) {
   var nameString = "";
   for(var i = 0; i < array.length; i++) {       
        // take the element on position i. arrays start on position 0

        // if it is not the element before the last one, add a comma
        if ((i < array.length-2)) {
            nameString = nameString + array[i] + ", ";
        } 
        // if it IS the element before the last one, add and
        else if (i === array.length -2) {
           nameString = nameString + array[i] + " and ";
        } 
        // the only uncovered element is the last one, therefore an else is enough
        else {
           nameString = nameString +array[i];
        }
    }
    // finally you  have to return the final string
    return nameString;
}

console.log(arrayString(names));