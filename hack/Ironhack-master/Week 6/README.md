## Monday: 

### What's an API?

"In computer programming, an application programming interface (API) specifies how some software components should interact with each other”

Basically an API is a computer-computer interface that allows programs to interact with each other.

### HTTP:

+ URL (Uniform Resource Locator): a unique address for a resource
+ Method: the kind of action the client wants the server to take
+ Headers: meta-information about the request
+ Body: the data the client wants to send the server.

### REST

(Representational State Transfer) is a software architecture style for building scalable web services:

+ Protocol agnostic
+ Uses standard HTTP 
+ Simple
+ Scalable
+ Performant
+ Stateless

APIs that use REST principles are called RESTful APIs

### RESTful APIs

RESTful APIs are defined with these aspects:

+ Base URL: The base address for our requests
+ Internet media type: For the data
+ Resources: Data you expose in your API
+ Supported operations: Create, Read, Replace, Update, Delete.

## Tuesday: 

### Security

Apps contain resources that can be accessed by many users. Unless we secure our app, they will able to access all of them with no restriction whatsoever.

Sometimes we might want to allow that (in our public parts of the site) but for the most part we will want to control access to our app, through authentication and authorization.

It is your responsibility to properly secure your app.

### Authentication

> bcrypt gem

When included in a model the **has_secure_password** method adds:

+ The ability to save a hashed **password_digest** attribute to the database
+ A pair of virtual attributes: **password** and **password_confirmation**
+ Presence validations on create for these, and it also validates that they match
+ An authenticate method that returns the user when the password is correct (and false otherwise)

The only requirement **has_secure_password** has to work is that the model needs to have an attribute called **password_digest**

### ActiveRecord Relationships (recap)

### ORM = Object Relational Mapping

### Many to Many relationships

## Wednesday: 

### What is a “database”

A database, formally, is an organized collection of data (SQL).  

Most frequently when we talk about databases really mean the software used to manage it: It’s Database Management System, that is used to capture and analyze data and write it to permanent storage.

#### SQL Indexes

Databases use indexes to speed up the performance of SELECT queries on a table, by reducing the number of database data pages that have to be visited/scanned at the cost of extra writes and storage space.

They can cause slower INSERTS and UPDATES.

They are also used for policing database constraints: PRIMARY KEY, FOREIGN KEY, UNIQUE

#### When to use an Index

+ If you expect your app to have a lot of data.
+ If you are going to access records on a table through a foreign key or through a column other than the id.
+ If you are going to be sorting a column often.
+ To make sure values are really unique (validation can fail)

#### When not to use Indexes

+ On small tables.
+ On tables that have frequent, large batch update or insert operations.
+ On columns that contain a high number of NULL values.
+ On columns that are frequently manipulated

```ruby
class AddWinnerReferenceToMatches < ActiveRecord::Migration
  def change
  	add_reference :matches, :winner, references: :players
  end
end
```
	add reference in the table `:matches`, in the atribute (column of the table) `:winner` to the table `:players (which is a model)

**rails c** => `#<Match id: 2, winner_faction: "Terran", loser_faction: "Zerg", duration: 30, date: nil, created_at: "2016-07-13 15:20:15", updated_at: "2016-07-13 15:38:20", winner_id: 2, loser_id: 1>`

## Thursday: 

### Deploy 

[Heroku ToolBelt](https://toolbelt.heroku.com)

`rails new my-first-heroku-app --database=postgresql` => postgresql DataBase

pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start => starts postgresql after restarting your computer

### Git branches

`git checkout <branch>` => changes from the current branch to the <branch>

`git checkout -b <branch>` => creates and changes to a new branch (-b) creates the new branch

`git branch -d <branch>` => deletes the <branch> (you can only do this after merging it)

`git branch -D <branch>` => deletes the <branch> (you can do this without merging it)

`git rebase branch_from_where_the_new_branch_cames` => Reapply commits on top of another base tip - [Rebase](https://git-scm.com/docs/git-rebase)

`git push origin <branch>` => A branch is not available to others unless you push the branch to your remote repository

`git diff <source_branch> <target_branch>` => Before merging changes, you can also preview them by using

`git push origin master` => pushes the code to GitHub

`git push heroku master`=> pushes the code to Heroku


### GEMS

+ [Paperclip](https://github.com/thoughtbot/paperclip) - (files management)
+ [Imagemagick](https://github.com/ImageMagick/ImageMagick) - (image management)
+ [Figaro](https://github.com/laserlemon/figaro) - (simple Rails app configuration)
+ [Devise](https://github.com/plataformatec/devise) - (Flexible authentication solution for Rails with Warden. http://blog.plataformatec.com.br/tag/devise/)

## Friday:  

BBQ Creator exercise

## Saturday

### Introduction to React

+ [React](https://facebook.github.io/react)
+ [JSX](https://jsx.github.io)
+ [Redux](http://redux.js.org)
+ [webpack](https://webpack.github.io)
+ [Browserify](http://browserify.org)
+ [ES6](https://developer.mozilla.org/en-US/docs/Web/JavaScript/New_in_JavaScript/ECMAScript_6_support_in_Mozilla )
