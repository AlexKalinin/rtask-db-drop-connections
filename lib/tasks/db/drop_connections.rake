root = Rails.root.to_s

namespace :db do
  desc 'Disconnect everyone from postgres database'
  task drop_connections: :environment do
    cnf = YAML.load_file(root + '/config/database.yml')[Rails.env]
    if cnf['adapter'] != 'postgresql'
      puts 'db:drop_connections(): Current database is not PostgreSQL! Ignoring this task...'
      next
    end

    PostgresConnectionHelper::drop_all_connections cnf['database'], cnf['username'], cnf['password']

  end

end