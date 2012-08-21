# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ruby_claim/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jonathan Jackson"]
  gem.email         = ["jonj@promedicalinc.com"]
  gem.description   = %q{This gem allows you to specify a 837 claim output into an object and write that object onto a CMS1500 form.}
  gem.summary       = %q{This gem allows you to specify a 837 claim output into an object and write that object onto a CMS1500 form.}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "ruby_claim"
  gem.require_paths = ["lib"]
  gem.version       = RubyClaim::VERSION

  gem.add_dependency("prawn", "~> 1.0.0rc1")
end
