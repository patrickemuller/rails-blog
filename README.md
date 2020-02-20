[![Maintainability](https://api.codeclimate.com/v1/badges/9c6936bd6ed00b662461/maintainability)](https://codeclimate.com/github/patrickemuller/rails-blog/maintainability)

# Ruby on Rails Blog App

* Main branch: master
* Ruby version: 2.7.0
* Rails version: 5.1.3
* PG version: ~> 1.2.2

## Features on this application

- Using Twitter Bootstrap for CSS
- Dashboard to create, read, update and destroy Posts
- You can write posts with Markdown format
- Syntax Highlight for Code Blocks

## Installation / Getting Started

To install (development environment) on your machine, just follow the tips above:

    git clone git@github.com:patrickemuller/rails-blog.git

It assumes you have a machine equipped with Ruby, PostgreSQL, etc. If not, set up
your machine with [this script](https://github.com/COSMITdev/env-setup)

After setting up, you can run the application using:

    bin/rake db:reset && bin/rails server

For default WEBRICK is used as development server, but you can use [Heroku Local](https://devcenter.heroku.com/articles/heroku-local) to simulate production environment on your local machine.

## Creating feature branches

In all projects we work with `feature branches`. It's a good way to controll who are doing what and to improve quality of code, once you need to up a PR with that branch after.

### Create the branch

The nomenclature of the feature branch is composite by `{name initials}-{feature name || description}`, and probably will be something like that: `pm-review-typo` or `pm-create-users`.

Also, always keep you branch up-to-date with master, and keep master updated too. To do this, always run `git checkout master && git pull origin master`

Now, to create the feature branch just run `git checkout master && git checkout -b
[name-of-branch]`.

## Openning a Pull Request

After you finish the implementations what you did on your branch, you can up this to Github and open a Pull Request. This way other persons of the project can available your things and propose improvements. Just create the PR when you have confidence you create everything you need to like views, controllers, specs...
