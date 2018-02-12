# Frozen-string-literal: true
# Copyright: 2018 - MIT License
# Encoding: utf-8

$LOAD_PATH.unshift(File.expand_path("lib", __dir__))
require "jekyll/dates/version"

Gem::Specification.new do |s|
  s.require_paths = ["lib"]
  s.authors = ["Jordon Bedwell"]
  s.version = Jekyll::Dates::VERSION
  s.homepage = "http://github.com/envygeeks/jekyll-dates"
  s.files = %w(Rakefile Gemfile README.md LICENSE) + Dir["lib/**/*"]
  s.summary = "A tag, with some stuff useful stuff on Jekyll for dates."
  s.email = ["jordon@envygeeks.io"]
  s.name = "jekyll-dates"
  s.license = "MIT"

  s.required_ruby_version = ">= 2.3.0"
  s.add_runtime_dependency "liquid-string-drop", "~> 1.0"
  s.add_runtime_dependency "jekyll", "~> 3.6"

  s.add_development_dependency "rubocop", "~> 0.52"
  s.add_development_dependency "luna-rspec-formatters", "~> 3.0"
  s.add_development_dependency "simplecov", "~> 0.15"
  s.add_development_dependency "rspec", "~> 3.0"
end
