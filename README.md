# README

# XBE Assignment

We'd like to ensure that server application code runs any time that certain data in the database changes (even if the change was directly made to the database).

## Installation

This application uses the following Ruby and Rails version. 

Ruby version 

    ruby '3.1.1'

Rails version

    rails '7.0.4'

Follow these easy steps to install and start the app:

First, install the gems required by the application:

    bundle

Next, execute the database migrations/schema setup:

    bundle exec rake db:setup

Start the sidekiq server for background jobs:

    bundle exec sidekiq

### Start the app

Start the Rails server:

    bundle exec rails server OR rails s

We don't have any landing/dashboard page, so we will get the default Rails page.


We can check the sidekiq logs at

    http://localhost:3000/sidekiq

To check the RSpec test cases, run the follroing command in terminal.

    rspec spec
