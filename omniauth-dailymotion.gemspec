# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/dailymotion/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-dailymotion'
  s.version  = OmniAuth::Dailymotion::VERSION
  s.authors  = ['Nicolas Blanco']
  s.email    = ['nicolas@nicolasblanco.fr']
  s.summary  = 'Dailymotion strategy for OmniAuth'
  s.homepage = 'https://github.com/slainer68/omniauth-dailymotion'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.0'

  s.add_development_dependency 'rspec', '~> 2.10.0'
  s.add_development_dependency 'rake'
end
