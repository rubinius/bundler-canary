# coding: utf-8
require './lib/bundler/canary/version'

Gem::Specification.new do |spec|
  spec.name          = "rubinius-bundler-canary"
  spec.version       = Bundler::Canary::VERSION
  spec.authors       = ["Brian Shirai"]
  spec.email         = ["brixen@gmail.com"]
  spec.summary       = %q{A utility to test Rubinius runs Bundler.}
  spec.description   = %q{A simple repository and gem to help test and troubleshoot issues with Rubinius running Bundler.}
  spec.homepage      = "https://github.com/rubinius/bundler-canary"
  spec.license       = "BSD"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
