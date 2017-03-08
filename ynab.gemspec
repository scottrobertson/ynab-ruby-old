# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ynab/version'

Gem::Specification.new do |spec|
  spec.name          = "ynab"
  spec.version       = Ynab::VERSION
  spec.authors       = ["Scott Robertson"]
  spec.email         = ["scottymeuk@gmail.com"]

  spec.summary       = "Interact with the YNAB API"
  spec.description   = "This library will allow you to interact with the YNAB API"
  spec.homepage      = "https://github.com/scottrobertson/ynab-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
