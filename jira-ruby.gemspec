# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'jira/version'

Gem::Specification.new do |s|
  s.name        = 'jira-ruby'
  s.version     = JIRA::VERSION
  s.authors     = ['SUMO Heavy Industries']
  s.homepage    = 'http://www.sumoheavy.com'
  s.summary     = %q{Ruby Gem for use with the Atlassian JIRA REST API}
  s.description = %q{API for JIRA}
  s.licenses    = ['OSL-3.0']

  s.rubyforge_project = 'jira-ruby'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  # Rubtime Dependencies
  s.add_runtime_dependency 'oauth', '~> 0.5', '>= 0.5.0'
  s.add_runtime_dependency 'activesupport', '>= 4.2', '< 5.1'

  # Development Dependencies
  s.add_development_dependency 'railties', '~> 4.2', '>= 4.2.0'
  s.add_development_dependency 'webmock',  '~> 1.18', '>= 1.18.0'
  s.add_development_dependency 'rspec', '~> 3.0', '>= 3.0.0'
  s.add_development_dependency 'rake', '~> 10.3', '>= 10.3.2'
  s.add_development_dependency 'guard', '~> 2.13', '>= 2.13.0'
  s.add_development_dependency 'guard-rspec', '~> 4.6', '>= 4.6.5'
  s.add_development_dependency 'pry', '~> 0.10', '>= 0.10.3'
end
