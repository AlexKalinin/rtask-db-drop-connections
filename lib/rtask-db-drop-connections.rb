require 'pg'
require 'database/postgres_helper'
class DbDropConnectionsTask < Rails::Railtie
  rake_tasks do
    Dir[File.join(File.dirname(__FILE__),'tasks/db/drop_connections.rake')].each { |f| load f }
  end
end