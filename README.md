# rtask-db-drop-connections

Ruby gem, for dropping all connections to current database.

Sometimes we got exception, while trying drop current database with opened connections by rake task:
```
$ rake db:drop
PG::ObjectInUse: ERROR:  database "my_database" is being accessed by other users
DETAIL:  There is 1 other session using the database.
: DROP DATABASE IF EXISTS "mila_development"
...
```

The `rtask-db-drop-connections` solves this issue. It contains the rake task `db:drop_connections` for dropping all connections to
current database configured in `config/database.yml`. (Currently PostgreSQL DBMS supports only)



## Installation

include this line in your rails `Gemfile`:

```ruby
gem 'rtask-db-drop-connections', '~> 1.0'
```

and execute

```
bundle install
```

## Usage

### Rails Rake Task

For dropping all connections to current Rails database (configured in `config/database.yml`) you can execute this command:

```
rake db:drop_connections
```

If you want execute `db:drop_connections` automatically before the task `db:drop`, you can create file
`lib/tasks/db/drop_connections.rake` with content:

```ruby
# file: lib/tasks/db/drop_connections.rake

# Using gem rtask-db-drop-connection to extend db:drop functionality
Rake::Task['db:drop'].enhance [:drop_connections]
```

then, when you will execute:

```
rake db:drop
```

first, all connections to database will be reset, and then the `rake db:drop` will be executed itself.

### Ruby code

Also you can call `drop_all_connections` method directly from anywhere:

```ruby
PostgresConnectionHelper::drop_all_connections 'database', 'username', 'password'
```


## TODO

* Add another DBMS suport

