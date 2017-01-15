## Monday: 

### Ruby on Rails

+ Opinonated
+ Convention over configuration
+ MVC

#### Development environment

+ Meant to be used while building new features for software
+ Shows helpful stack traces and error messages for the developer
+ Slower because all of your code is reloaded on each request

#### MVC

+ Software pattern that stands for Model - View - Controller
+ Invented in 70s to implement user interfaces
+ Each component has clear responsibilities

#### Params

We use params as a way to send extra information to our server. We need more information for the server to do its work.

#### Assets

Aside from the Ruby code for your routes and controllers and the HTML code in your views, a huge part of any Web application is CSS, JS and images.

> rake routes

## Tuesday: 

> Creating a migration

```ruby
	$ rails g migration add_description_to_projects description:txt
```

CRUD data form a data source

+ Database
+ API
+ Filesystem

Ensure data format is valid

+ Implment validations
+ Length of a name is shorter than 50 chars

#### Look for relational DB documentation

+ MongoDB
+ CouchDB
+ ...

#### SQLite Exercises

+ Get all of the projects that aren't named Ironhack
	+ Project.where.not(name: 'Ironhack')
+ Get the projects created in the last month ordered by name alphabetically
	+ Project.where('created_at < ?', Date.current - 1.month).order('name ASC')
+ Get the projects updated yesterday
	+ date1 = Date.yesterday.beginning_of_the_day
	+ date2 = Date.yesterday.end_of_day
	+ Project.where('updated_at >?', date1).where('updated_at <?', date2)
+ Get one project with the ID of 3
	+ Project.find_by(id: 3)


## Wednesday: 

### Model

The model is the Class that is going to do something with the data in the Data Base

```ruby
	class ProjectsController < ApplicationController
		def index
			@projects = Project.order(created_at: :desc).limit(10)
		end

		def show # this is the model, that finds the project by id in your DB
			@project = Project.find(params[:id])
		end
	end
```

## Thursday: 

render => is goind to display a `view and you only count with the variables used in this `view`
redirect => is goind to execute all the code in the action we specified

### Format Validations

Format validations are exactly what they sound like, they're checking the format of a specific field to make sure it aligns with what you're expecting.

Let's say my user has an email field, and it's something that the user enters into a form when they first sign up. Eventually I may want to send this user an email, maybe they forgot their password. This email is going to depend on the user actually having a valid email. If their email is asdfsfdsdfsd, then the email will fail to send and your system will collapse into a burning pile of silicon. Ok, maybe not quite, but you will more than likely not get the result you're expecting.

#### Some other examples of format validations include:

+ A valid phone number
+ A web domain(http://www.example.com)
+ A product's price
+ A formatted date(often handled at the database level)

Consistency Validations

Consistency validations are what was discussed in the intro. We're maintaining consistency through our models and database to prevent errors and unexpected consequences in the future.

Think of the example with the name field in our Project class, we want to maintain consistency and assume that all of our projects will have a name. This prevents errors and unnecessary logic in places where it doesn't belong in the future.

#### Some other examples of consistency validations include:

+ Validating a relationship exists (Project has_many entries => Entry belongs to Project, validate that the entry has a project associated to it)
+ Validating the presence of fields.
+ Validating the uniqueness of certain fields (Only one user with a certain email address can exist in the database)


## Friday: 

### Ruby on Rails Projects

#### NEW PROJECT

	`rails new 'name_of_the_project'`=> It creates a new folder with the skeleton of the project inside

#### NEW CONTROLLER

	`rails g controller 'name_of_the_controller'` => Plural, 1st in MixedCase

#### NEW MODEL

	`rails g model "name_of_the_model"` => Singular, MixedCase

	```ruby
		def Product < ActiveRecord::Base
			belongs_to :user
		end

		def User < ActiveRecord::Base
			has_many :products
		end
	```

#### RAKE

[Ironhack: Migrations](http://ironhack.com:3000/#/learning_unit/531) & [Rails: Migratoins](http://edgeguides.rubyonrails.org/active_record_migrations.html)

	`rake db:create` => starts the Data Base

	`dake db:migrate` => Rails then adds it to an internal list of migrations that you have, so that it can tell whether they are pending or have been run already.

	`rails g migration < migration_name > 'attribute:type'` => When you generate a migration yourself.

	`rake db:rollback` => Destroy the migration

Add **username** to **User **model

	`rails g migration add_username_to_users username:string`

Remode **username** to **User **model

	`rails g migration remove_username_from_users username:string`

Add **price** to **Product** model

	`rails g migration add_price_to_products price:float`

Remove **price** from **Product** model

	`rails g migration remove_price_from_products price:float`

Add shipping details to **Order** model

	`rails g migration add_shipping_details_to_orders user_id:integer address:string phone_number:string`

Remove shipping details from **Order** model

	`rails g migration remove_shipping_details_from_orders user_id:integer address:string phone_number:string`

Here are some of the most used migration commands that you will see.

+ add_column
+ remove_column
+ rename_column
+ add / remove reference (We will talk about references shortly)
+ create_table
+ create_join_table

#### RENAME COLUMN

	`rename_column :<table>, :<current_column_name>, :<new_column_name>`

	`rails g migration fix_brand_name_in_cars`

Notice, I only need to provide the table name, the column name, and the type I want to change the column to, not the current type