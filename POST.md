# Creating a Single Page Application with React-Redux font end and Rails API back end using Devise and JSON Web Tokens for authenticating.

## Configure with PostgreSQL DB

Create the app scaffold with the API argument and setting the databse to use PostgreSQL.

  `rails new Moniez-Backend --api -d=postgresql`

Add some gems

  - `gem 'pg'`
  - `gem 'rack-cors'`
  - `gem 'devise'`
  - `gem 'devise-jwt', '~> 0.5.9'`
  - `gem 'better_errors'`
  - `gem 'pry-moves'`

Run `bundle`

Configure encrypted credentials for DB
`EDITOR=vim rails credentials:edit`

Allow all access for CORS
  - Uncomment CORS initializer file change to `*`

Generate devise user model & migrations

  `rails g devise:install`
  `rails g devise User`

Edit user migration as desired
  - Add username field
  - run migration `rails db:setup` & `rails db:migrate`

Create custom controllers that inherit from devise to mod the sign up & sign in attributes


  - `rails g controllers api/v1/users`
  - `rails g controllers api/v1/sessions`
  - Add routes to route file

Add gem for auth tokens & edit user model to use Tokens
  - `gem 'simple_token_authentication', '~> 1.0'`
  - `acts_as_token_authenticatable` in users model

Add tokens field to users table with migration
  - `rails g migration add_authentication_token_to_users "authentication_token:string{30}:uniq"`
  - `rails db:migrate`

Add auth_token to returned object in sessions (must save first?)
