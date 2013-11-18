require File.join(File.dirname(__FILE__), 'lib/p')

Gem::Specification.new do |s|
  s.name        = 'p'
  s.version     = P::VERSION
  s.executables << 'p'
  s.date        = '2013-11-17'
  s.summary     = "A project generator for everything"
  s.authors     = ["Brian Smith"]
  s.email       = 'bsmith@swig505.com'
  s.files       = [ "lib/p.rb" ]
  s.homepage    = "https://github.com/Lytol/p"
  s.license     = 'MIT'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'minitest'

  s.test_files  = Dir.glob('test/*_test.rb')
end
