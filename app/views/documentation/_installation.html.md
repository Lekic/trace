## Installation Guide

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
* Migrate database `rake db:migrate`
* Seed database: `rake db:seed`