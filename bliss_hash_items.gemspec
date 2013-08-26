# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bliss_hash_items/version'

Gem::Specification.new do |spec|
  spec.name          = "bliss_hash_items"
  spec.version       = BlissHashItems::VERSION
  spec.authors       = ["Fadendaten GmbH"]
  spec.email         = ["support@fadendaten.ch"]
  spec.description   = %q{This library will convert a receipt's line items
                          to a Ruby hash to enable fast calculations.}
  spec.summary       = %q{Represent line items as Ruby hash.}
  spec.homepage      = "http://www.fadendaten.ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
