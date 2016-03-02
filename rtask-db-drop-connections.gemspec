Gem::Specification.new do |s|
  s.name        = 'rtask-db-drop-connections'
  s.version     = '1.0.0'
  s.date        = '2016-03-02'
  s.summary     = 'Add db:drop_connections rake task to Rails Application'
  s.description = 'Add db:drop_connections rake task to Rails Application'
  s.authors     = ['Alex Kalinin']
  s.email       = 'login.hedin@gmail.com'
  s.files       = Dir['lib/rtask-db-drop-connections.rb']
  s.files       += Dir['lib/database/posgres_helper.rb']
  s.files       += Dir['lib/tasks/**/*.rake']
  s.homepage    = 'https://github.com/zencodepro/rtask-db-drop-connection'
  s.license       = 'Apache-2.0'
  s.add_runtime_dependency 'pg', ['~> 0.18.0']
end