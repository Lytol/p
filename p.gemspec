require File.join(File.dirname(__FILE__), 'lib/p')
require 'rake'

Gem::Specification.new do |s|
  s.name        = 'p'
  s.version     = P::VERSION
  s.executables << 'p'
  s.summary     = "A project generator for everything"
  s.authors     = ["Brian Smith"]
  s.email       = 'bsmith@swig505.com'
  s.files       = FileList[ "lib/**/*.rb", "[A-Z]*" ]
  s.homepage    = "https://github.com/Lytol/p"
  s.license     = 'MIT'

  s.add_runtime_dependency 'thor', '~> 0.18.0'

  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.0'

  s.test_files  = Dir.glob('test/*_test.rb')
end
