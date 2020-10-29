# -*- encoding: utf-8 -*-
# stub: capistrano-unicorn 0.1.10 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-unicorn".freeze
  s.version = "0.1.10"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Dan Sosedoff".freeze]
  s.date = "2013-07-25"
  s.description = "Capistrano plugin that integrates Unicorn server tasks.".freeze
  s.email = "dan.sosedoff@gmail.com".freeze
  s.homepage = "https://github.com/sosedoff/capistrano-unicorn".freeze
  s.rubygems_version = "3.1.4".freeze
  s.summary = "Unicorn integration for Capistrano".freeze

  s.installed_by_version = "3.1.4" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<capistrano>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<capistrano>.freeze, [">= 0"])
  end
end
