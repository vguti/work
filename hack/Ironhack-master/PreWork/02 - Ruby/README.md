# Ruby

#{variable_name}: This is a variable
\ Escape a character

	> #### methos - http://ruby-doc.org/core-2.2.0/

## Data types

### Strings

_Strings of elements, like phrases_

	> #### methods

	.capitalize
	.split
	.length
	.include?

### Integers

_Numbers and floats are for numbers with decimals_

> #### Fixnum and Bignum

> ##### Fixnum

_Fixnum is an Integer, which is a number with no decimal points_

age = 28

cats = 5

> #### Bignum

_For larger numbers, you can separate thousands with an underscore to make it easier to read_

stars_in_milkyway = 325_006_357_011

	> #### methos

	.even?
	.odd?
	.round
	.times

_They can be true or false_

age = 28

age.odd?

age.round(1)

### Arrays

Same as JavaScript arrays start at 0

animals = [ 'Lions', 'Tigers', 'Bears' ]
puts animals

numbers = ['One', 2, 'Three']
puts numbers[0] # will put 'One'
puts numbers[1] # will put 2

	> #### methos

	<< or .push
	.delete_at
	.sort
	.join

["chocolate", "mint", "strawberry", "vanilla", "caramel", "chili"].join
  => 'chocolatemintstrawberryvanillacaramelchili'

### Hashes

_A Hash is an associative array. Whereas elements in an array have an order or number associated to them, elements in a hash have a name associated to them. It's basically like a dictionary. You can lookup values by its name or key_

my_hash = {}

my_hash["AST"] = "Asturias"
my_hash['GAL'] = "Galicia"

puts my_hash["AST"]
puts my_hash['GAL']

puts my_hash

	> #### methos

	.has_key?
	.select

my_hash.has_key?("AST") 
=> true

	##### .select

	_You pass it a block of code with certain condition_

	my_hash.select { |key, value| key.include?("G") }
 	=> { "GAL" => "Galicia" }
 
### Hints

If you don’t know what type of data a variable is, you can find out by calling the #class method on it:

'what is this?'.class
3.class
[1,2,3].class

## Pry

"two" > "three" => true. Why?

	> ==	equals
	> >		greater than
	> < 	less than
	> >=    equal to or greater than
	> <=    equal to or less than
	> &&    and 
	> ||	or
	> !     not -> Denies a statement

## Conditionals

### If, elsif, and else

	> if (condition)
	>   code to be executed if this condition is true
	> elsif (another condition)
	>   code to be executed if this condition is true
	> elsif (even another condition)
	>   code to be executed if this condition is true
	> #add more if needed
	> else # the final else is optional!
	>   code to be executed if none of the above are true

### Loops

You may want to repeat certain blocks of code. This is called a loop. There are several ways to execute a loop, and we will learn about three of them here: __for__, __while__, and __each__.

#### For

We can use __for__ to iterate through a collection

	> numbers = [1,2,3]
	> for element in numbers
	>   puts "-> #{element}"
	> end

#### While

__while__ is a construct that runs a chunk of code __while__ a given condition is true. Once the condition is no longer true, the code stops running. It’s important to make sure that something happens in your loop so that the condition will eventually evaluate false, otherwise you will have an infinite loop.

string = ""

# While the string's length is less than 10
while string.length < 10
  # Add an 'a'
  string = string + 'a'
end

puts "The final string is #{string}"

## Iterating Arrays

The most common type of loop is done with arrays and hashes, and uses a method called __#each__. Arrays being lists, it's natural to want to go through each item in the list. We call this array __traversal__ or __iteration__.

## Functions

	> it starts with def and ends with end
	> it has a unique name
	> it always returns a value

def say_hello
  puts "Hello!"
end

### Arguments

You can pass information to your function for it to use. These are called __arguments__. You can pass more than one argument, and you pass the arguments when you call the function. When you define the function, you set how many arguments it accepts and how it will be used. Then when you call the function, you have to pass the right number of arguments.

### Expressions

An argument doesn’t have to be a simple value. You can also pass an __expression__ as an argument. An expression is a value or several values that are replaced by another value after applying some operators (like +, -, *, etc.). The expressions are evaluated first and then only the final value is passed as an argument.

Expressions are evaluated left to right, inner parentheses before outer parentheses, and with the operations following the normal rules of precedence.

### Return values

Functions have return values. The function will always return the value of the last line of the function. If the last line it’s a call to another function, it will return the return value of that function. It sound confusing, but it’s easy to understand

 ### CRUD,

 	 create, read, update, and delete (respectively)
















