## Monday: 

### Unit testing

Unit testing is a software testing method by which individual units of source code, sets one or more compute program modules together with associated control data, usage, procedures, and operating procedures are tested to termine if they are fit for use

```ruby
RSpec.describe "String calculator" do
	it "returns 0 for the empty string" do
		expect(StringCalc.new.add("")).to eq(0)
	end
end
```

A good unit test should be

+ Test **ONE** thing each time
+ Automated
+ Repeatable
+ Easy to implement
+ Should remain for future use
+ Should run at the push of a button
+ Should be quick

	**WRITE YOUR TEST FIRST**

let => creates a variable to be used in our test

```ruby
let(:calculator) {StringCalc.new("")}
```

This is a lazy method, so if you don't use it is not created

*Look for mocks in Ruby*
*Look for Ruby matchers*
*Look Recursive functions*

## Tuesday: 

### Sinatra introduction

## Wednesday: 

### MVC = Model - View - Controller

Singletone objects

+ Modal: Related to the Objects(classes) of your application
	+ Calculations
	+ Validations
	+ Conversions
	+ Syntactic Sugar
	+ Any WORK
+ View: Views are related to your display
	+ HTML
	+ CSS
	+ JavaScript
+ Controller: Controllers are the coordinators in MVC
	+ Assignements
	+ Error processing (not validation)
	+ Control the model
	+ Crete jobs
		+ Send emails
		+ Queue workers
	+ INVOCATION

### require & require_relative

require_relative complements the builtin method require by allowing you to load a file that is relative to the file containing the require_relative statement.

For example, if you have unit test classes in the "test" directory, and data for them under the test "test/data" directory, then you might use a line like this in a test case:

## Thursday: 

+ Twit mini sinatra app
+ Sinatra blog

## Friday: 

### One and One with Lluis

Always test the logic of your methods, classes...

> **DIVIDE AND WIN**
>	+ Try to split your problems into small chunks
>	+ Methods should only do one thing, but good
> 	+ If you have a method that does more things than one, it will fail easier than a method that does only one thing
> *TDD*
> + Test things the smalles way possible first, for example if I add 0 to a sum what should I expect
> 	+ 2nd Iteration: What happens if I add two nums to that method
>		+ 3rd Iteration: What happens if you divide that sum plus two nums by another number

***EXAMPLE OF @VARIABLE + ATTR_READER***

*This example is from the exercise of the /Week2/Day 5 - Movie Lovers/question.rb*

```ruby
class Question
	attr_reader :movies
	
	def initialize(movies)
		@movies = movies
	end

	def error_message
		my_array_of_movies = []
		if my_array_of_movies.empty?
			"WARNING: Empty array, try again!"
		end
	end

	def array_length
		@movies
	end
end
```

See the **attr_reader :movies** above? this is used in the code below to let the archive /Week2/Day 5 - Movie Lovers/question_spec.rb access to the @movies instance variable

> **WARNING** *definition in Spanish* - el attr_reader, attr_writer and atter_accessor permite acceder desde un .rb o una clase de otro .rb

```ruby
RSpec.describe "class Question:" do

let(:films) {Question.new(["1", "2", "3", "4", "5", "6", "7", "8", "9"])}

it "should return you an array of 9 movies" do
	expect(films.movies.size).to eq(9)
end
```

**attr_reader** :movies *from /Week2/Day 5 - Movie Lovers/question.rb*

`@variable`: let access the

+ Movie lovers exercise