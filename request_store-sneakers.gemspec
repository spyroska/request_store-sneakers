# frozen_string_literal: true

require_relative "lib/request_store/sneakers/version"

Gem::Specification.new do |spec|
  spec.name          = "request_store-sneakers"
  spec.version       = RequestStore::Sneakers::VERSION
  spec.authors       = ["Spyros Kazanas"]
  spec.email         = ["diolcos@proton.me"]

  spec.summary       = "Easily integrate RequestStore with sneakers as a middleware"
  spec.description   = "Provides a Sneakers Middleware to clear out RequestStore after each work is processed."
  spec.homepage      = "https://github.com/spyroska/request_store-sneakers"
  spec.license       = 'MIT'
  spec.required_ruby_version = ">= 3.0.0"

  spec.files         = Dir["lib/**/*"] + ["LICENSE.txt", "request_store-sneakers.gemspec"]

  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["source_code_uri"]   = spec.homepage
  spec.metadata["changelog_uri"]     = "#{spec.homepage}/blob/main/CHANGELOG.md"
  spec.metadata["bug_tracker_uri"]   = "#{spec.homepage}/issues"

  spec.add_dependency "request_store", "~> 1.3"
  spec.add_dependency "sneakers", "~> 2.12"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "byebug", "~> 9.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "~> 1.21"
end
