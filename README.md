# Quote editor

Single-page quote editor without having to write a single line of custom JavaScript thanks to Turbo drive, Turbo Frames and Turbo Streams.
- all clicks on links and form submissions are now AJAX requests thanks to Turbo Drive.
- real-time features with the help of Turbo Streams

## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)


## General info

Demo [here](https://awesome-quote-editor.herokuapp.com/)

Demo Login
Use the following credentials to explore the app:
```
  email: accountant@handihand.com
  password: password
```
  
## Technologies
Project is created with:
* Ruby 3.1.2
* Rails 7.0.4
* Redis 5.0.7

- gem turbo-rails
- gem Devise
- gem stimulus-rails
- gem simple_form
- Test : BDD with Capybara and Selenium
- Front: Scss, Stumulusjs
- Database: PostgreSQL
- Hosting: Heroku
	
## Setup

Clone the repository
```
git git@github.com:PaulineTW/quote-editor.git
cd quote-editor
```

First, install the gems required by the application:
```
$ bundle install
```

Initialize the database
```
$ bin/setup
```

Start rails server
```
$ bin/dev
```

Start Redis server
```
$ redis-server
```
You can find your app now by pointing your browser to http://localhost:3000. 

Run Test
```
$ bin/rails test:system
$ bin/rails test:all
```


## Features

- User login
- CRUD quote
- CRUD line item date
- CRUD line item
- Tuning of disappearing flash-messages
- Quote total display

