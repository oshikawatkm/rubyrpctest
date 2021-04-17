# -*- encoding: utf-8 -*-
# stub: tapyrus 0.2.7 ruby lib

Gem::Specification.new do |s|
  s.name = "tapyrus".freeze
  s.version = "0.2.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["azuchi".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-03-10"
  s.description = "The implementation of Tapyrus Protocol for Ruby.".freeze
  s.email = ["azuchi@chaintope.com".freeze]
  s.executables = ["tapyrusrb-cli".freeze, "tapyrusrbd".freeze]
  s.files = ["exe/tapyrusrb-cli".freeze, "exe/tapyrusrbd".freeze]
  s.homepage = "https://github.com/chaintope/tapyrusrb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "The implementation of Tapyrus Protocol for Ruby.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ecdsa>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<eventmachine>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<murmurhash3>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<daemon-spawn>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
    s.add_runtime_dependency(%q<eventmachine_httpserver>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<iniparse>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<siphash>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.2.3"])
    s.add_runtime_dependency(%q<json_pure>.freeze, [">= 2.3.1"])
    s.add_development_dependency(%q<leveldb-native>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<ecdsa>.freeze, [">= 0"])
    s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
    s.add_dependency(%q<murmurhash3>.freeze, [">= 0"])
    s.add_dependency(%q<daemon-spawn>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<eventmachine_httpserver>.freeze, [">= 0"])
    s.add_dependency(%q<iniparse>.freeze, [">= 0"])
    s.add_dependency(%q<siphash>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 5.2.3"])
    s.add_dependency(%q<json_pure>.freeze, [">= 2.3.1"])
    s.add_dependency(%q<leveldb-native>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, ["~> 3.0"])
  end
end
