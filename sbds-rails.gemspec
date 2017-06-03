$:.push File.expand_path('../lib', __FILE__)

require 'sbds/version'

Gem::Specification.new do |s|
  s.name = 'sbds-rails'
  s.version = Sbds::VERSION
  s.authors = ['Anthony Martin']
  s.email = ['github@martin-studio.com']
  s.homepage = 'https://github.com/steem-third-party/sbds-rails'
  s.summary = 'Steem Blockchain Data Service Rails Engine'
  s.description = 'Ruby on Rails Engine for accessing Steem Blockchain Data Service.'
  s.license = 'CC0-1.0'

  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']
  s.require_path = 'lib'

  s.add_dependency 'rails', '~> 5.1', '>= 5.1.1'
  
  s.add_development_dependency 'pry', '~> 0.10.3'
  s.add_development_dependency 'simplecov', '~> 0.11.2'
  s.add_development_dependency 'mysql2', '~> 0.4', '>= 0.4.6'
end
