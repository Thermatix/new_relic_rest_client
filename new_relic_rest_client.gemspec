# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'new_relic_rest_client/version'

Gem::Specification.new do |spec|
  spec.name          = "new_relic_rest_client"
  spec.version       = NRRC::VERSION
  spec.authors       = ["Thermatix"]
  spec.email         = ["mbeckerwork@gmail.com"]

  spec.summary       = %q{a rest client to access the new relic rest api}
  spec.homepage      = "https://github.com/Thermatix/new_relic_rest_client"
  spec.license       = "MIT"
  
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client" , "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
