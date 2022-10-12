# School Fund raiser api

This will serve as the developer documentation. Anything related to the stack, where things are located, or how to setup or access them will be documented here.

## Technologies

* Ruby 3.0.0
* Rails  6.1.3.2
* TestSuite Rspec
* Faker

## Development Setup

1. Clone the project repo

        $ git clone https://github.com/hashim-iqbal/fund_raiser.git

2. Get into the project directory

        cd fund_raiser_api

3. Install gems and their dependencies

        $ bundle install

4. Run this command to create and populate DB
    
        $ rails db:create db:migrate db:seed

## For starting the development server

        $ bundle exec rails s

* Development server by default start on the port 3000

## For running Test cases

Run following command to run the test cases

    $ rails rspec
