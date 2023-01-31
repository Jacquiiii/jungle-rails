# Jungle

Jungle is a one stop shop for plant lovers where users can purchase plants and have them delivered to their home.

This mini e-commerce application was improved by Jacqui Koroll during her time at the Lighthouse Labs Web Development bootcamp. The original inherited code is found [here](https://github.com/lighthouse-labs/jungle-rails).

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
- Cypress

## Screenshots

!["Screenshot of home page"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/home.png)
!["Screenshot of about"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/about.png)
!["Screenshot of products"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/products.png)
!["Screenshot of product"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/product.png)
!["Screenshot of sold out"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/sold-out.png)
!["Screenshot of admin"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/admin.png)
!["Screenshot of login"](https://github.com/Jacquiiii/jungle-rails/blob/master/docs/login.png)
