# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'truedialog_api/version'
Gem::Specification.new do |spec|
  spec.name          = "truedialog-api"
  spec.version       = TrueDialogApi::VERSION
  spec.authors       = ["TrueDialog, Inc."]
  spec.email         = ["support@truedialog.com"]
  spec.summary       = %q{TrueDialog Ruby API wrapper.}
  spec.description   = %q{TrueDialog Ruby API wrapper.}
  spec.homepage      = "https://www.truedialog.com/"
  spec.license       = "BSD"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_dependency "rest-client"
  spec.add_dependency "yard"
  spec.add_dependency "json-schema"
  spec.add_dependency "rdoc"
  spec.add_development_dependency "pry"
end
