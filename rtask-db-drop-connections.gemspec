Gem::Specification.new do |s|
  s.name        = 'rtask-db-drop-connections'
  s.version     = '1.0.5'
  s.date        = '2016-03-02'
  s.summary     = 'Add db:drop_connections rake task to Rails Application'
  s.description = 'Add db:drop_connections rake task to Rails Application'
  s.authors     = ['Alex Kalinin']
  s.email       = 'login.hedin@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.homepage    = 'https://github.com/zencodepro/rtask-db-drop-connection'
  s.license       = 'Apache-2.0'
  s.add_dependency 'pg', ['~> 0.18.0']
end
