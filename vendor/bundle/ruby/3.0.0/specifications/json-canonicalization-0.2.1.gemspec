# -*- encoding: utf-8 -*-
# stub: json-canonicalization 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "json-canonicalization".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Gregg Kellogg".freeze]
  s.date = "2021-02-13"
  s.description = "JSON::Canonicalization generates canonical JSON output from Ruby objects.".freeze
  s.homepage = "http://github.com/dryruby/json-canonicalization".freeze
  s.licenses = ["Unlicense".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "JSON Canonicalization for Ruby.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_development_dependency(%q<yard>.freeze, ["~> 0.9"])
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9"])
  end
end
