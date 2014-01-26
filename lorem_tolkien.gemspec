# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lorem_tolkien/version'

Gem::Specification.new do |spec|
  spec.name          = "lorem_tolkien"
  spec.version       = LoremTolkien::VERSION
  spec.authors       = ["John Maddux"]
  spec.email         = ["jemaddux@gmail.com"]
  spec.description   = %q{A sentence generator that quotes Lord of the Rings and the Hobbit.}
  spec.summary       = %q{Tolkien quotes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
