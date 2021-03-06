# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'orcrist/version'

Gem::Specification.new do |spec|
  spec.name          = "orcrist"
  spec.version       = Orcrist::VERSION
  spec.authors       = ["Jan Schulte"]
  spec.email         = ["hello@unexpected-co.de"]
  spec.summary       = %q{Programming Language experiments}
  spec.description   = %q{Programming Language experiments}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19.1"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "racc",  "~> 1.4.11"
  spec.add_development_dependency "rake", "~> 10.3.2"
end
