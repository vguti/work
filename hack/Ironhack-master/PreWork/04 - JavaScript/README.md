# JavaScript

## Saving Values

    var city;

    city = "Madrid";

    console.log(city);

    city = "Barcelona";

    console.log(city);


    var country = "Spain";

    console.log(country);

    country = "United States";

    console.log(country);

    country = country + " of America";

    console.log(country);


## Basic Comparision

    var number = 10;

    // Equal
    if (number === 10) {
        console.log("Number is equal to 10!");
        console.log(number);
    }

    number = number - 1;

    // Not equal
    if (number !== 10) {
        console.log("Number is now NOT equal to 10!");
        console.log(number);
    }

    // Less than
    if (number < 10) {
        console.log("Number is less than 10!");
        console.log(number);
    }

    number = number + 2;

    // Greater than
    if (number > 10) {
        console.log("Number is now greater than 10!");
        console.log(number);
    }

    // Greater than or equal
    if (number >= 10) {
        console.log("Number is greater than or equal to 10!");
        console.log(number);
    }

    number = 10;

    if (number >= 10) {
        console.log("Number is STILL greater than or equal to 10!");
        console.log(number);
    }

    // Less than or equal
    if (number <= 10) {
        console.log("Number is less than or equal to 10!");
        console.log(number);
    }

    number = number - 2;

    if (number <= 10) {
        console.log("Number is STILL less than or equal to 10!");
        console.log(number);
    }


## Comparing strings

Strings use alphabetical order for comparison, capital letters being ordered first:

    var country;

    country = "Australia";

    if (country < "Belgium") {
        console.log(country + " is less than Belgium!");
    }

    country = "australia";

    if (country > "Australia") {
        console.log(country + " is greater than Australia!");
    }

## Combining comparisons

You can also combine different comparisons to make a larger, more specific one using && and ||:

    var country, number;

    country = "Australia";

    // || represents an OR
    if (country === "Australia" || country === "New Zealand") {
        console.log(country + " is either Australia or New Zealand!");
    }

    country = "New Zealand";

    if (country === "Australia" || country === "New Zealand") {
        console.log(country + " is either Australia or New Zealand!");
    }

    number = 15;

    // && represents an AND
    if (number > 10 && number < 20) {
        console.log(number + " is between 10 and 20.");
    }

    number = 21;

    // No longer runs because number is greater than 20
    if (number > 10 && number < 20) {
        console.log(number + " is between 10 and 20.");
    }

## Doing things when if doesn't match

Keep in mind that when using chains of if and else only the section that matches your case will run. The other sections of code will be ignored.

    var number;

    number = 21;

    if (number > 10 && number < 20) {
        console.log(number + " is between 10 and 20.");
    } else if (number <= 10) {
        console.log(number + " is less than 10.");
    } else {
        console.log(number + " is greater than 20.");
    }

## For loop

    var i;

    for (i = 1;  i <= 42;  i = i + 1) {
        console.log(i);
    }

So what's going on there? Here's the structure of a for:

### For structure

    for (  [start];  [condition];  [after-each]  ) {
        [task-code]
    }

Basically a for loop wants to run [task-code] a bunch of times. In our example the only code we want to run a bunch of times is printing the variable i. As for that other weird stuff:

**[start]** is code to run to set some initial state before your loop starts. In our example we just set the initial value of i to 1.

**[condition]** is the comparison to perform to decide whether or not to keep running the loop again. When i becomes greater than 42 our loop will stop.

**[after-each]** is the code to run after each time we go through the loop to change the condition. This is supposed to ensure that eventually the condition will not be met and so the loop will stop at some point. In our case, we are adding 1 to i so that we will get closer to 42 every time we go through the loop. Be careful because JavaScript will let you write a loop that never stops (we call them infinite loops).

### Exercise: repeat "la" x 10

    string="";
    for (i=0; i<10;i++) {
        string+="la"; console.log(string);
    }

## While loop

### While structure

    while ([condition]) {
        [task-code]
    }

Be careful using while it could end in an infinite loop. The code will be executed infinitely, so the browser will crash. To fix this situation, we have to change that value eventually:

    while (isTrue) {
        console.log(count);
        if (count < 3) {
                isTrue = false;
        }
        count--;
    }

Now, when count is lower than 3, we set the variable isTrue to false, creating a moment where we are going to exit of the loop. The second part is change count to make the condition "count < 3" true. For that, we write "count--;". This is shorthand for "count = count - 1" or "count -= 1", so the value of count will decrease one by one until it’s lower than 3. At that moment, we enter into the if statement and isTrue is set to false and we’ll finally exit the while loop.

## Functions

    function claimForCountry (country, thing) {
        var claim;

        claim = "In the name of " + country + " I claim this " + thing + "!";

        return claim;
    }

    var message;

    message = claimForCountry("Spain", "land");

    console.log(message);

    message = claimForCountry("Italy", "pizza");

    console.log(message);

### Functions structure

+ Generalize code
+ Reuse code
+ Split responsibilities We will discuss these principles throughout this chapter

### Function recommendations

+ Name your functions with verbs, but only one verb per function
+ Taking a decision is one thing to do
+ If your function is more than 20 lines of code, you're doing it wrong
+ If you're grouping bunches of instructions, you're doing more than one thing.

    function [name] ( [parameter1], [parameter2], [parameter3]... ) {
        [code]
        return [value];
    }

### Function example

    function claimForCountry (country, thing) {
        var claim;

        claim = "In the name of " + country + " I claim this " + thing + "!";

        return claim;
    }

    var message;

    message = claimForCountry("Spain", "land");

    console.log(message);

    message = claimForCountry("Italy", "pizza");

    console.log(message);

A function has a __[name]__ that you call it by. In our example that name is claimForCountry.

When you call it you send it as many __[parameters]__ as it needs. Parameters are just values you send the function. Our example claimForCountry needs two parameters:

__country__: The name of the country that is making the claim.

__thing__: The name of the thing that is being claimed.

Then the function runs __[code]__ with those parameters. In our example we declare a variable and set it's value using country and thing.

Finally, after running the code it returns a [value]. In our case we return the claim variable's value.

    function countDown (value) {
         while (value > 0) {
            value--;
            console.log(value);
        }
        
        console.log("Blast off!");
    }

    countDown(100);

## Arrays

An array is a list of values within square brackets []. Let's see a quick example:

    var countries;

    countries = [ "Russia", "Finland", "Morocco", "Brazil" ];

    console.log(countries);

## Objects

Objects are similar to arrays except they use curly braces **{}** for creating them and instead of using numbers to label values, you use strings. These strings are called keys. Objects are great for representing things from the real world in our code. Try it:

    var country;

    country = {
        name: "Uruguay",
        continent: "South America",
        capital: "Montevideo"
    };

    console.log(country);

Finally, you can loop over the keys in an object as well with a special for syntax called for ... in. Try it:

    var country;

    country = {
        name: "Uruguay",
        continent: "South America",
        capital: "Montevideo"
    };

    for (key in country) {
        console.log("This country's " + key + " is " + country[key] + ".");
    }

When you are using **for ... in**, remember to use the square brackets **[]** for accessing values in an object. Using the dot won't do what you expect because **country.key** will look for a value in the object that's literally called **key**.

## Data Types

    Boolean: true and false.
    Number: 1.0, 2.7, 10, .5, 7.34e-2, 077, 0xAB.
    String: "hello world!", 'hi again!'.
    Object: {name: 'Conan', str: 50}, ['sword', 'helmet'], null.
    Function: function (a, b) { return a + b; }.
    undefined: undefined.

## Escaping characters

    \n for new lines
    \t for a tab
    \' for a single quote
    \" for a double quote
    \\ for a back slash

## Accessing values in Objects and Arrays

    var character = { name: 'Conan', str: 100  };
    character.str;
    character.name;

    => Conan

    var inventory = [];
    inventory.push('rope'); // Will be in index 0
    inventory.push('batarang'); // Will be in index 1
    inventory.push('darts'); // Will be in index 2

    inventory[1]; // will print 'batarang' as it is the item under index 1

## Operators

**Arithmetic** operators are those to manipulate numbers such as addition **(+)**, subtraction **(-)**, multiplication **(*)**, division **(/)**, remainder **(%)** of the integer division or negation **(-)**.

**Relational** operators are those intended to establish an order between values such as lower **(<)** and lower than **(<=)** or greater **(>)** or greater than **(>=)**.

**Comparison** operators test if two objects are equal **(===)** and **(==)**.

**Logical** operators test logical statements: 'and' operator **(&&)** return true if both operands are true or false in other case while the or operator **(||)** will return true if at least one of the operands is true. The negation operator **(!)** evaluates to true if its unique operand is false and false if the operand is true.

**Bitwise** operators are able to manipulate the bits of the binary representations of Numbers.

**Assignments** operators are used to assign or change the contents of variables and memory locations. You will read more about this in the next section. We have already seen one assignment operator in the previous chapter, do you remember what it was?**

## Pre-increments and post-increments

    var a = 10;
    ++a; // pre increment
    a++; // post increment

    var b = 10;
    --b; // pre decrement
    b--; // post decrement

*Pre-increment* is an operator that takes the variable, increases it by one and returns the new value. *Post-increment* is another operator that takes the variable, increase it by one and returns the former value for that variable.

### Equality and Mutability

The answer is subtle. For any data-type other than Object, JavaScript tests if the **contents** are equal. For Objects, JavaScript tests if the **containers** are equal.

## If then Else

    if (<conditional_expression>) {
      <instructions>
    }
    [else if (<conditional_expression>) {
      <instructions>
    }]
    ...
    [else {
      <instructions>
    }]

In the above formula, square brackets **[]** mean that what is inside is optional and ellipsis **...** means that you can repeat the former block as many times as you want.

## Switch case

    switch (<expression>) {
      case <value1>:
        <instructions>
      [break]

      case <value2>:
        <instructions>
      [break]

      ...

      default:
        <instructions>
      [break]
    }

## Expressions and operators by category
For an alphabetical listing see the sidebar on the left.

### Primary expressions

Basic keywords and general expressions in JavaScript.

**this** The this keyword refers to the function's execution context.

**function** The function keyword defines a function expression.

**class** The class keyword defines a class expression.

**function*** The function* keyword defines a generator function expression.

**yield** Pause and resume a generator function.

**yield*** Delegate to another generator function or iterable object.

**[]** Array initializer/literal syntax.

**{}** Object initializer/literal syntax.

**/ab+c/i** Regular expression literal syntax.

**( )** Grouping operator.

### Left-hand-side expressions

Left values are the destination of an assignment.

**Property accessors** Member operators provide access to a property or method of an object
(object.property and object["property"]).

**new** The new operator creates an instance of a constructor.

**new.target** In constructors, new.target refers to the constructor that was invoked by new.

**super** The super keyword calls the parent constructor.

**...obj** The spread operator allows an expression to be expanded in places where multiple arguments (for function calls) or multiple elements (for array literals) are expected.

## Increment and decrement

Postfix/prefix increment and postfix/prefix decrement operators.

**A++** Postfix increment operator.

**A--** Postfix decrement operator.

**++A** Prefix increment operator.

**--A** Prefix decrement operator.

## Unary operators

A unary operation is operation with only one operand.

**delete** The delete operator deletes a property from an object.

**void** The void operator discards an expression's return value.

**typeof** The typeof operator determines the type of a given object.

**+** The unary plus operator converts its operand to Number type.

**-** The unary negation operator converts its operand to Number type and then negates it.

**~** Bitwise NOT operator.

**!** Logical NOT operator.

## Arithmetic operators

Arithmetic operators take numerical values (either literals or variables) as their operands and return a single numerical value.

**+** Addition operator.

**-** Subtraction operator.

**/** Division operator.

***** Multiplication operator.

**%** Remainder operator.

****** Exponentiation operator.

## Relational operators

A comparison operator compares its operands and returns a Boolean value based on whether the comparison is true.

**in** The in operator determines whether an object has a given property.

**instanceof** The instanceof operator determines whether an object is an instance of another object.

**<** Less than operator.

**>** Greater than operator.

**<=** Less than or equal operator.

**>=** Greater than or equal operator.

## Equality operators

The result of evaluating an equality operator is always of type Boolean based on whether the comparison is true.

**==** Equality operator.

**!=** Inequality operator.

**===** Identity operator.

**!==** Nonidentity operator.

## Bitwise shift operators

Operations to shift all bits of the operand.

**<<** Bitwise left shift operator.

**>>** Bitwise right shift operator.

**>>>** Bitwise unsigned right shift operator.

## Binary bitwise operators

Bitwise operators treat their operands as a set of 32 bits (zeros and ones) and return standard JavaScript numerical values.

**&** Bitwise AND.

**|** Bitwise OR.

**^** Bitwise XOR.

## Binary logical operators

Logical operators are typically used with boolean (logical) values, and when they are, they return a boolean value.

**&&** Logical AND.

**||** Logical OR.

## Conditional (ternary) operator

**(condition ? ifTrue : ifFalse)**
The conditional operator returns one of two values based on the logical value of the condition.

## Assignment operators

An assignment operator assigns a value to its left operand based on the value of its right operand.

**=** Assignment operator.

***=** Multiplication assignment.

**/=** Division assignment.

**%=** Remainder assignment.

**+=** Addition assignment.

**-=** Subtraction assignment

**<<=** Left shift assignment.

**>>=** Right shift assignment.

**>>>=** Unsigned right shift assignment.

**&=** Bitwise AND assignment.

**^=** Bitwise XOR assignment.

**|=** Bitwise OR assignment.

**[a, b] = [1, 2]**

**{a, b} = {a:1, b:2}**

Destructuring assignment allows you to assign the properties of an array or object to variables using syntax that looks similar to array or object literals.

#### The special variables this and arguments

##### arguments

The variable **arguments** is an array containing all the parameters passed to the function call. Actually, it is not an array so it lacks for all the methods normal Arrays have but it can be easily converted into an array. The variable is quite useful to implement *variadic* arguments, i.e. functions that receive a variable number of arguments.

#### this

The variable this refers to the **Object** from which the function was called. Objects can store functions as properties and we call these functions the **methods of the object**








