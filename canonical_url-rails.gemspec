# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'canonical_url/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "canonical_url-rails"
  spec.version       = CanonicalURL::Rails::VERSION
  spec.authors       = ["Takayuki Matsubara"]
  spec.email         = ["takayuki.1229@gmail.com"]
  spec.description   = %q{URL canonicalization for Rails.}
  spec.summary       = %q{URL canonicalization for Rails.}
  spec.homepage      = "https://github.com/ma2gedev/canonical_url-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ['>= 3.2.0']
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
