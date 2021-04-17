# -*- encoding: utf-8 -*-
# stub: bip-schnorr 0.3.2 ruby lib

Gem::Specification.new do |s|
  s.name = "bip-schnorr".freeze
  s.version = "0.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["azuchi".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-01-04"
  s.description = "The ruby implementation of bip-schnorr.".freeze
  s.email = ["azuchi@chaintope.com".freeze]
  s.homepage = "https://github.com/chaintope/bip-schnorrrb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "The ruby implementation of bip-schnorr.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ecdsa>.freeze, ["~> 1.2.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<ecdsa>.freeze, ["~> 1.2.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
