## Monday: 

### HTML and CSS Basics

I already know that

## Tuesday: 

Classes values need to be related to the content itself, not the style of the content

## Wednesday: 

JS Recap v3 (OMG)

Never use `==`

Do functions that do only ONE thing

## Thursday: 

### OO JavaScript

#### Construcor and this

#### Object Prototype

+ Objects can get their functions from their prototype.
+ If we use the prototype, all instances share a single function.

#### Asynchrony

+ In other words we want slow computations to be performed asynchronously.
+ Asynchrony is a state of not being synchronized.
+ Basically, it’s when things happen outside the regular flow of time.
+ Slow computations can be done asynchronously and while that happens, our program can do other work.
+ The point is, doing things asynchronously is less about calling functions to return values.

####  Callbacks

+ A callback is a function you pass in as a value.
+ It’s just like blocks in Ruby.
+ In JavaScript, since functions are also values, they can be used as arguments as well.

> One is to pass in a callback function value directly.
> We call this style the function expression style.

```javascript
someAsyncFunction(function () {
	// Do stuff here when done
});
```
> The other is to define a callback function first.
> We call this style the named function style.

```javascript
function done () {
	// Do stuff here when done
}

someAsyncFunction(done);

```
#### Scopes

#### Closures

A closure wraps up an entire environment, binding necessary variables from other scopes.

#### Hoisting

Rather than being available after their declaration, they might actually be available beforehand…

JavaScript treats variables that will be declared later differently than variables that are not declared at all.

Basically, the JavaScript interpreter "looks ahead" to find all the variable declarations and "hoists" them to the top of the function.

## Friday: 

```javascript

go to gym ---> [gym]
	|	(your girlfriend reminds you have a meeting with her fathers)
workout

function goToGym () {
	var canI = goToGym;

	while canI {
		workout
	}
}
```

>
> **CALLBACK**: we don't know when we will recive callback's response
> Is like when we wait a response to do what we have to do:
> + Is when I tell you:
>	+ Callme when...
>	+ When means: "When you finish your homework"
>

### Quiz game!