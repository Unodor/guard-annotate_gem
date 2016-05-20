# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/annotate_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'guard-annotate_gem'
  spec.version       = Guard::AnnotateGemVersion::VERSION
  spec.authors       = ['Daniel Marchlik']
  spec.email         = ['marchlik@unodor.cz']
  spec.homepage      = 'https://github.com/unodor/guard-annotate_gem'
  spec.summary       = 'Guard plugin for annotate_gem'
  spec.description   = 'Automatically annotate Gemfile'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }

  spec.require_paths = ['lib']

  spec.add_dependency 'guard',        '~> 2.0'
  spec.add_dependency 'guard-compat', '~> 1.1'
  spec.add_dependency 'annotate_gem', '~> 0.0.8'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
end
