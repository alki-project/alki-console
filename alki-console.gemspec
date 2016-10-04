# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alki/console/version'

Gem::Specification.new do |spec|
  spec.name          = "alki"
  spec.version       = Alki::Console::VERSION
  spec.authors       = ["Matt Edlefsen"]
  spec.email         = ["matt.edlefsen@gmail.com"]
  spec.summary       = %q{Base library for building applications.}
  spec.description   = %q{Base library for building applications. Provides tools for organizing and connection application units.}
  spec.homepage      = "https://github.com/medlefsen/alki-console"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.bindir        = 'exe'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10.0'
  spec.add_dependency "alki", "~> 0.2"
  spec.add_dependency "pry", "~> 10.0"
end