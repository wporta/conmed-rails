## Introduction
This is a Ruby on Rails project aimed to help doctors manage their patients
and medical appointments information. *It is still a work in progress*
and I'll love any feedback to improve this small application.

### Ruby version

I am currently developing **ConMed** using Ruby 2.4

### System dependencies
* rvm 1.28.0
* Rails 5.0.2
* PostgreSQL

## Database creation and initialization

### Fedora

To install Postgresql in Fedora: 

`dnf install postgresql postgresql-server libpq-devel`

We need to create a user in Postgresql:

`createuser -d -P conmed`

It is good practice to create a _gemset_ specific for out project:

`rvm gemset create conmed`

Select the gemset to install the gems. (This step of selecting the gemset is needed everytime we're going to work on our project)

`rvm gemset use conmed`

Once you cloned the repo, you need to install the *bundler* to install gems:

`gem install bundler`

Now, let's install all our required gems:

`bundle install`

you should be able to execute: 

`rake db:create && rake db:migrate && rake db:seed`

Now you can start the Rails Development Server:

`rails s`

And navigate to: `http://localhost:3000`

#### Sample Data
There is some small sample data in case you want to play around:

`rake db:fake_data`