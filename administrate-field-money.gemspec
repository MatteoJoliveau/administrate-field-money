$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-money'
  gem.version = '0.1.0'
  gem.authors = ['Michele Gerarduzzi']
  gem.email = ['michele.gerarduzzi@gmail.com']
  gem.homepage = 'https://github.com/zooppa/administrate-field-money'
  gem.summary = 'Money field plugin for Administrate'
  gem.description = 'A plugin to deal with money in Administrate'
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")

  gem.add_runtime_dependency 'administrate', '< 1.0.0'
  gem.add_runtime_dependency 'rails', '>= 4.2', '< 6'
  gem.add_runtime_dependency 'money', '~> 6'

  gem.add_development_dependency 'rake', '~> 12.3'
  gem.add_development_dependency 'rspec', '~> 3.7'
end
