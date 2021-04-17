# -*- encoding: utf-8 -*-
# stub: bech32 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bech32".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shigeyuki Azuchi".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-05"
  s.description = "The implementation of Bech32 encoder and decoder.".freeze
  s.email = ["azuchi@haw.co.jp".freeze]
  s.homepage = "https://github.com/azuchi/bech32rb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "The implementation of Bech32 encoder and decoder.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
