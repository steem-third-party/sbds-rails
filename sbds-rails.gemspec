$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'sbds/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name = 'sbds-rails'
  s.version = Sbds::VERSION
  s.authors = ['Anthony Martin']
  s.email = ['github@martin-studio.com']
  s.homepage = 'http://github.com/inertia186/sbds-rails'
  s.summary = 'Steem Blockchain Data Service Rails Engine'
  s.description = 'Ruby on Rails Engine for accessing Steem Blockchain Data Service.'
  s.license = 'CC0-1.0'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 5.1.1'
  
  s.add_development_dependency 'pry', '~> 0.10.3'
  s.add_development_dependency 'simplecov', '~> 0.11.2'
  s.add_development_dependency 'mysql2'
end
