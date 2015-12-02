$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "isaac/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'isaac'
  s.version     = Isaac::VERSION
  s.authors     = ['enoty']
  s.email       = ['proudhamyak@gmail.com']
  s.homepage    = 'https://github.com/RacoonsGroup/'
  s.summary     = 'Summary of Isaac.'
  s.description = 'Description of Isaac.'
  s.license     = 'MIT'

  s.files = Dir["{app,config,db,lib}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.2.5'
  s.add_dependency 'jquery-rails'
  s.add_dependency 'sass'
  s.add_dependency 'bootstrap-sass', '~> 3.3.6'
  s.add_dependency 'sprockets-rails'
  s.add_dependency 'slim-rails'
  s.add_dependency 'simple-navigation-bootstrap'
  s.add_dependency 'simple_form'
  s.add_dependency 'cocoon'

  s.add_development_dependency 'sqlite3'
end
