## Introduction
This is a Ruby on Rails project aimed to help doctors manage their patients
and medical appointments information. It is still a work in progress
and I'll love any feedback to improve this small application.

### Ruby version

I am currently developing **ConMed** using Ruby 2.4

### System dependencies
* rvm 1.28.0
* Rails 5.0.2
* PostgreSQL

### Database creation and initialization
Once you cloned the repo, you should be able to execute: 

`rake db:create && rake db:migrate && rake db:seed`

#### Sample Data
There is some small sample data in case you want to play around:

`rake db:sample`