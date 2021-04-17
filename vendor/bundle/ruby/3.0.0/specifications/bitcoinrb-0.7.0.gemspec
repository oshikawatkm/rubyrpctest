# -*- encoding: utf-8 -*-
# stub: bitcoinrb 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "bitcoinrb".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["azuchi".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-19"
  s.description = "The implementation of Bitcoin Protocol for Ruby.".freeze
  s.email = ["azuchi@chaintope.com".freeze]
  s.executables = ["bitcoinrb-cli".freeze, "bitcoinrbd".freeze]
  s.files = ["exe/bitcoinrb-cli".freeze, "exe/bitcoinrbd".freeze]
  s.homepage = "https://github.com/chaintope/bitcoinrb".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "The implementation of Bitcoin Protocol for Ruby.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<ecdsa>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<eventmachine>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<murmurhash3>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<bech32>.freeze, ["~> 1.1.0"])
    s.add_runtime_dependency(%q<daemon-spawn>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<thor>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
    s.add_runtime_dependency(%q<eventmachine_httpserver>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<iniparse>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<siphash>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<protobuf>.freeze, ["= 3.8.5"])
    s.add_runtime_dependency(%q<json_pure>.freeze, [">= 2.3.1"])
    s.add_runtime_dependency(%q<bip-schnorr>.freeze, [">= 0.3.2"])
    s.add_runtime_dependency(%q<base32>.freeze, [">= 0.3.4"])
    s.add_development_dependency(%q<leveldb-native>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 3.11.1"])
  else
    s.add_dependency(%q<ecdsa>.freeze, [">= 0"])
    s.add_dependency(%q<eventmachine>.freeze, [">= 0"])
    s.add_dependency(%q<murmurhash3>.freeze, [">= 0"])
    s.add_dependency(%q<bech32>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<daemon-spawn>.freeze, [">= 0"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
    s.add_dependency(%q<ffi>.freeze, [">= 0"])
    s.add_dependency(%q<leb128>.freeze, ["~> 1.0.0"])
    s.add_dependency(%q<eventmachine_httpserver>.freeze, [">= 0"])
    s.add_dependency(%q<iniparse>.freeze, [">= 0"])
    s.add_dependency(%q<siphash>.freeze, [">= 0"])
    s.add_dependency(%q<protobuf>.freeze, ["= 3.8.5"])
    s.add_dependency(%q<json_pure>.freeze, [">= 2.3.1"])
    s.add_dependency(%q<bip-schnorr>.freeze, [">= 0.3.2"])
    s.add_dependency(%q<base32>.freeze, [">= 0.3.4"])
    s.add_dependency(%q<leveldb-native>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 12.3.3"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 3.11.1"])
  end
end
