# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "myths/version"

Gem::Specification.new do |s|
  s.name        = "myths"
  s.version     = Myths::VERSION
  s.authors     = ["Flavio Schiavini Abe"]
  s.email       = ["flaviosabe@gmail.com"]
  s.homepage    = "http://github.com/fsabe"
  s.summary     = %q{Myths is a tool to generate slide presentations}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('mustache', '>= 0.99.4')
  s.add_dependency('rdiscount', '>= 1.6.8')
end
