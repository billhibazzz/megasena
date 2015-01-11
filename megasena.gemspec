Gem::Specification.new do |s|
  s.name        = 'megasena'
  s.version     = '1.1.1'
  s.date        = '2014-12-30'
  s.summary     = "MegaSena Lottery"
  s.description = "MegaSena Gem"
  s.authors     = ["Naner Nunes"]
  s.email       = 'naner@naner.com.br'
  s.files       = ["Gemfile", "lib/megasena.rb", "config/contests.yml"] + Dir['lib/lottery/*']
  s.homepage    = 'http://rubygems.org/gems/megasena'
  s.license     = 'MIT'

  s.add_dependency("mechanize")
end
