## Monday: 

### Presentation

+ Share
+ Grow
+ Build
	+ all-nighter

### Structure

+ Weeks 1-6 / Classes
+ Weeks 7-8 / Personal Project
+ Hackshow / July 29th
+ Hiring Week

### Rutine

+ 9:00 - 11:00 / Session 1
+ 11:00 - 13:00 / Session 2
+ 13:00 - 14:00 / Lunch
+ 14:00 - 15:00 / Pair programming
+ 15:00 - 18:00 / Exercises
+ 18:00 / Weekly Exercises Events

### Teachers

+ Rául @RaulvvH
+ Javi Velasco @javivelasco
+ Patricia Gao @patriciagao
+ Juan Urrios @xherek33

### Ruby Recap

Ruby returns us the last thing we've used

```ruby
def some
	return puts "Whatever"
	puts "Something else"
end

=> :some

some()

Whatever
=> nil
```

You get *nil* if you try to access an array if the object doesn't exist

### Methods

+ .each
+ .map
+ .reduce
	+ .reduce(0) => first value of the sum
+ .each with index
+ .select
+ .grep
+ .find

## Tuesday: 

### Object oriented programming

Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which may contain data, in the form of fields, often known as attributes; and code, in the form of procedures, often known as methods. 

+ @name = instance variable => Each instance of a class has its own value for the instance variables (Give us permission to access this variable inside the same class)
+ @@name = class variable => All instances of a class share the same value for this variable
+ .self
+ Encapsulation
	+ The important part of an object is the message (methods) it exposes and the outcome they produce
	+ The objects are black boxes. We should not care on how the code is done but what it does
	+ This is the most basic form of abstracting complexity
+ Ineritance
	+ It's basing a class on another class so they share implementation
	+ All classes iin Ruby inherit from the Object class
	+ We can overwrite behaviour of a class in the child class by replacing methods
+ Attributes
	+ attr_reader
	+ attr_writer
	+ attr_accessor

## Wednesday: 

### Git & GitHub

+ git status
+ git add
+ git commit
+ git push
+ git pull

### Ruby Inheritance

It allows you to create a class that is a refinement or a specialisation of another

```ruby
class KaraokeSong < Song

super != super() != super(params)
``

***EXAMPLE***

```ruby
class AnimalKeeper
def feedAnimal(food)
	puts "Eating: #{food}"
end
end

class Cowboy < AnimalKeeper
def feedAnimal(food)
	super(food)
end

def get_food_from_store
	""
end
end

food = "LASAGNA!!"
Cowboy.new.feedAnimal(food)
```

+ super: look for the parent method and the params it has recived
+ super(): look for the parent method in the parent Class without any param
+ super(param): look for the parent method with a specific param

#### Choosing a relationship

+ Use inheritande for is-a relationship
+ Use mixin for is-able-to relationships
+ Use duck types for behaves-like-a relationships
+ Use composition for has-a relationships

#### Modules

##### Include vs Extend

+ Include mixes methods into instances of the base object
+ Extend mixes methods into the base object itself

## Thursday: 

### Easy to extend?

+ No side effects
+ Small changes in requirements require small changes in code
+ Existing code is easy to reuse
+ The easiest way to make a change is to add code that is also easy to change itself

#### Describe it!

One way to know that a class is doing to much is by describing it

If you are using a lot of ands and ors, ot's probably doing too much

#### Extract'til you Drop

+ Extract until you can't extract more
+ Then extract a little bit more
+ Then you are done... Then extract a little bit more
+ Now you are really done

### Refactoring

Recfactoring is the process of changing a software system in such a way that it does not alter the external behaviour of the code yet improves its internal structure

## Friday: 

+ Chess Validator Exercise