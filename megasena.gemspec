Gem::Specification.new do |s|
  s.name        = 'megasena'
  s.version     = '1.1.5'
  s.date        = Time.now.strftime "%Y-%m-%d"
  s.summary     = 'MegaSena Lottery'
  s.description = 'MegaSena Gem'
  s.authors     = ['Naner Nunes']
  s.email       = 'naner@naner.com.br'
  s.files       = ['Gemfile', 'lib/megasena.rb', 'config/contests.yml'] + Dir['lib/lottery/*']
  s.homepage    = 'http://rubygems.org/gems/megasena'
  s.license     = 'MIT'

  s.add_dependency('mechanize', '~> 2.7.3')
end
