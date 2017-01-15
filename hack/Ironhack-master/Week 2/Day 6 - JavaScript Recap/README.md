## Comparison

	== 	equal to
	===	equal value and equal type

## Undefined

	When the "thing" in the console doesn't return anything

## Vars

	var city = "Madrid" -> Its a global scope, you can access the variable in the hole program

## Loops

### For

	You use FOR loop when you know how many times to loop for. IE,: loop for an entire array

	var myarray = [2,3,4,5,6]

	for (var i = 0; i < myarray.length; i++){
		myarray[i] = i;
		console.log(myarray[i]);
	}

### While

	You use WHILE loop whe you don't know hoyw many times to loop for. IE,: while a <= 300;

### For and While loop mini exercise

	/* WHILE LOOP */

	var myArray = [1,2,3,4,5,6]
	var i = 0

	while(i < myArray.length) {
	  myArray[i] = i * 3;
	  console.log(myArray[i]);
	  i++;
	}


	/* FOR LOOP */

	var myArray = [1,2,3,4,5,6];

	for (var i = 0; i < myArray.length; i++){
			myArray[i] = i * 3;
			console.log(myArray[i]);
		}