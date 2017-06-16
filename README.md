# Steem Blockchain Data Service Rails Engine

[Ruby on Rails Engine for accessing Steem Blockchain Data Service.](https://github.com/steem-third-party/sbds-rails)

The [sbds](https://github.com/steemit/sbds) project is the official database layer for accessing a local, read-only version of the Steem blockchain.  It is developed and maintained by Steemit, Inc. and can be confugured to use SQLite, Postgres, and MySQL.

This `gem` allows you to access an `sdbs` instance with `ActiveRecord`.

## New Features

* Added `sqlite3` and `pg` drivers.
* Added scopes to simplify lookups for related transactions.  E.g.:
  * Get a specific post:
    * `post = Sbds::Comment.find_by(author: 'inertia', permlink: 'one-post-at-a-time')`
  * Get voting transactions for the post.
    * `post.votes`
    * `post.upvotes`
    * `post.downvotes`
    * `post.unvotes`
  * Get the comment options for the post.
    * `post.options`
    * `post.options.beneficiaries`

## Installation

### For Existing Rails Projects

Assuming you already have an existing rails project, add this line to your application's Gemfile:

```ruby
gem 'sbds-rails', require: 'sbds'
```

And then execute:
```bash
$ bundle install
```

### SQLite

This assumes that the database is stored as `db/sdbs.sqlite3` folder of your `rails` project.

Edit `database.yml`:

```yaml
default: &default
  adapter: sqlite3
  database: sbds.sqlite3
```

### MySQL

Edit `database.yml` and use your own `sbds` database or try out @furion's:

```yaml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: steemit
  password: steemit
  host: sbds-mysql.steemdata.com
  database: sbds
  reconnect: true
```

### PostgreSQL

```bash
$ createuser sbds -d --no-superuser
$ createdb -O sbds sbds
```

Edit `database.yml`:

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  database: sbds
  pool: 5
  username: sbds
  password:
```

### For New Projects

Have a look at this article on setting up a new rails project, then use the steps above to enable this plug-in.

[How to Write a Ruby on Rails App for STEEM](https://steemit.com/radiator/@inertia/how-to-write-a-ruby-on-rails-app-for-steem)

## Tests

* Basic tests can be invoked as follows:
  * `rake`
* To run tests with parallelization and local code coverage:
  * `HELL_ENABLED=true rake`
  
![](http://i.imgur.com/fCtba3M.png)

## Get in touch!

If you're using sbds-rails, I'd love to hear from you.  Drop me a line and tell me what you think!  I'm @inertia on STEEM.
  
## License

I don't believe in intellectual "property".  If you do, consider sbds-rails as licensed under a Creative Commons [![CC0](http://i.creativecommons.org/p/zero/1.0/80x15.png)](http://creativecommons.org/publicdomain/zero/1.0/) License.