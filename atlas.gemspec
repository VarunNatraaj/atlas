# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "atlas"
  gem.version       = "1.0.0"
  gem.authors       = ["Varun Natraaj"]
  gem.email         = ["-"]
  gem.description   = %q{Atlas is a gem to quickly list all routes}
  gem.summary       = %q{Atlas is a gem to quickly list all routes}
  gem.homepage      = "https://github.com/VarunNatraaj/atlas"
  gem.rdoc_options    = ["--charset=UTF-8"]
  gem.require_paths   = ["lib"]

  gem.add_dependency "rails", "=2.3.18"
end