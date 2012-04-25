# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "attr_readwrite/version"

Gem::Specification.new do |s|
  s.name        = "attr_readwrite"
  s.version     = AttrReadwrite::VERSION
  s.authors     = ["C. Jason Harrelson"]
  s.email       = ["cjharrelson@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{A companion to ActiveRecord's attr_readonly.}
  s.description = %q{The opposite of ActiveRecord's attr_readonly.}

  s.rubyforge_project = "attr_readwrite"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  %w(
    gem-dandy
    rb-fsevent
    growl
    guard-rspec
    guard
    rspec
    rails
    ruby-debug
    sqlite3-ruby
  ).each do |development_dependency|
     s.add_development_dependency development_dependency
  end

  # s.add_runtime_dependency "rest-client"
end
