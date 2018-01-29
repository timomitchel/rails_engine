# README

## Rails Engine

The Rails Engine API allows users to hit API endpoints that contain a variety of data relating to merchants, customers, transactions, invoices and items. It performs business analytics on these resources such as favorite customer for a specific merchant and revenue for a specific merchant. It provides over 30 RESTful API routes which you can see in the ``routes.rb`` file.

This project requires  Ruby version 2.4.1 and rails 5.4.1 

## Set Up

Fork this repository on Github.

visit your forked repo and clone your forked repository in to the directory of your choosing with

``   git clone https://github.com/your_username/rails_engine.git        ``

in your terminal , type:

 `` cd rails_engine ``

 `` bundle install ``

then initiatiate the migration of your database

run :

``rake db:create ``

`` rake db:migrate ``

`` rake import  ``
  
 this may take a few minutes
 
type 

`` rspec ``

to run your test suite 

then 

`` rails s ``

to start your server.

## Spec harness 

Note: The rails server must be running for the spec harness to work. Default port is 3000.

 In a new terminal window and in any directory other than the rails engine project directory

 run:
 
 `` cd .. ``
 
 `` git clone https://github.com/turingschool/rales_engine_spec_harness.git``
 
 ``  cd rales_engine_spec_harness ``
 
 `` bundle  ``
 
 `` bundle exec rake ``


to run the spec harness.
## Example Endpoints

# Merchants: 

`` GET /api/v1/merchants `` 
See all merchants

`` GET /api/v1/merchants/revenue `` 
See revenue for all merchants

`` GET /api/v1/merchants/1 `` 
See one merchant by id

`` GET /api/v1/merchants/find_all?name=Ullrich-Moen `` 
Find all merchants with name of Ullrich-Moen

`` GET /api/v1/merchants/find?id=3 `` 
Find first merchant with id of 3

`` GET /api/v1/merchants/5/items `` 
See all items for merchant with id 5

`` GET /api/v1/merchants/5/invoices `` 
See all invoices for merchant with id 5

`` GET /api/v1/merchants/5/revenue `` 
See revenue for merchant with id 5

`` GET /api/v1/merchants/5/favorite_customer `` 
See favorite customer for merchant with id 5

`` GET /api/v1/merchants/5/customers_with_pending_invoices `` 
See customers who have pending invoices for merchant with id 5


Example JSON response(GET /api/v1/merchants/find?id=3): 
``[
  {
    "id": 3,
    "name": "Willms and Sons"
  }
]``

See routes.rb file for all possible routes.

## Contributors

Timothy Tyrrell
Zachary Landes
