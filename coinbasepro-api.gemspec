# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coinbasepro/api/version'

Gem::Specification.new do |spec|
  spec.name          = "coinbasepro-api"
  spec.version       = Coinbasepro::Api::VERSION
  spec.authors       = ["Ronald Derksen"]
  spec.email         = ["ronald@derksen-it.nl"]

  spec.summary       = "Client library for Coinbase Pro"
  spec.homepage      = "https://github.com/ronaldderksen/coinbasepro-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bigdecimal"
  spec.add_dependency "faye-websocket"
  spec.add_dependency "em-http-request"

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
end
