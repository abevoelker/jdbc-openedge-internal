# -*- encoding: utf-8 -*-
require File.expand_path("../lib/jdbc/openedge/internal/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'jdbc-openedge-internal'
  s.version     = Jdbc::OpenEdge::Internal::VERSION
  s.platform    = 'java'
  s.authors     = ['Abe Voelker']
  s.email       = 'abe@abevoelker.com'
  s.date        = '2012-07-22'
  s.homepage    = 'https://github.com/abevoelker/jdbc-openedge-internal'
  s.summary     = 'Used by jdbc-openedge gem internally'
  s.description = s.summary

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "jdbc-openedge-internal"

  s.add_development_dependency "bundler", ">= 1.0.0"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "LICENSE", "*.md"]
  s.require_path = 'lib'
end
