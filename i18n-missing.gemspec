# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'i18n/missing/version'

Gem::Specification.new do |spec|
  spec.name          = "i18n-missing"
  spec.version       = I18n::Missing::VERSION
  spec.authors       = ["Dmitry Galinsky"]
  spec.email         = ["dima.exe@gmail.com"]

  spec.summary       = %q{summary}
  spec.description   = %q{description}
  spec.homepage      = "https://github.com/dima-exe/i18n-missing"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
