## Time Tracking Challenge

=======

**Time Tracking Challenge** It's a application made to pass on a challenge. It basically, consists in a Electronic Time Clock, where individual registers the places that he wishes to allow to check in. For after, to do the check in with his name/identification and comments.


## Project Setup

### 
pre requisites:

 - To have [Ruby](https://www.ruby-lang.org) version 2.5.1 previously installed.


### Configuring e executing tests

 - `bin/setup`
 - `bundle exec rspec`

#### Docker
 - `docker-compose build`
 - `docker-compose run --rm app bin/setup`
 - `docker-compose run --rm --service-ports app bash`
 - `bundle exec rspec`

### Executing the aplication

After the steps of configuration, execute the comand `rails server` and access from
url [http://localhost:3000/](http://localhost:3000/).

#### Docker

 - `docker-compose build`
 - `docker-compose run --rm app bin/setup`
 - `docker-compose run --rm app bundle install`
 - `docker-compose run --rm app rails assets:precompile`
 - `docker-compose up`
 - `docker exec -it timetracking bash`

### Main Contributors

[angelorange](https://github.com/angelorange)
