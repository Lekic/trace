## Installation Guide

To install the application locally:

* Download and install [Homebrew](http://brew.sh/) to the command line.
* Install Git via Homebrew: `brew install git`
* Install PostgreSQL via Homebrew: `brew install postgresql`
* Install RVM with CUrl: `\curl -L https://get.rvm.io | bash`
* Install Ruby 2.0.0-p247 to RVM: `rvm install 2.0.0-p247`
* Install Rails with Ruby: `gem install rails`
* Clone repo: `git clone https://github.com/haydenbleasel/trace.git`
* Change to the project directory.
* Set gemset: `rvm gemset use uts-trace`
* Bundle gemfile: `bundle`
* Create Postgres database: `initdb /usr/local/var/postgres -E utf8`
* Start database: `pg_ctl -D /usr/local/var/postgres start`
* Drop database: `rake db:drop`
* Create database `rake db:create`
* Migrate database `rake db:migrate`
* Seed database: `rake db:seed`

To deploy the application to Heroku:

* Download and install [Heroku Toolbelt](https://toolbelt.heroku.com/) to the command line.
* Login to Heroku: `heroku login`
* Add / Generate a key for Heroku: `heroku keys:add`
* Add Heroku as a remote repository: `git remote add heroku git@heroku.com:uts-trace.git`
* Push to Heroku: `git push heroku master`
* Drop database: `heroku pg:reset`
* Migrate database: `heroku run rake db:migrate`
* Seed database: `heroku run rake db:seed`