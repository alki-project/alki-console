# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'alki/console/version'

Gem::Specification.new do |spec|
  spec.name          = "alki-console"
  spec.version       = Alki::Console::VERSION
  spec.authors       = ["Matt Edlefsen"]
  spec.email         = ["matt.edlefsen@gmail.com"]
  spec.summary       = %q{Developer console for Alki applications}
  spec.homepage      = "http://alki.io/projects/alki-console"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 2.1.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.bindir        = 'exe'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "alki", "~> 0.14.0"
  spec.add_dependency "pry", "~> 0.11"
end
