# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'photish/plugin/sshdeploy/version'

Gem::Specification.new do |spec|
  spec.name          = "photish-plugin-sshdeploy"
  spec.version       = Photish::Plugin::Sshdeploy::VERSION
  spec.authors       = ["Henry Lawson"]
  spec.email         = ["henry.lawson@foinq.com"]

  spec.summary       = %q{A simple SSH based Deployment Engine Plugin for Photish}
  spec.description   = %q{Deploy your Photish site via SSH using rsync}
  spec.homepage      = "https://github.com/henrylawson/photish-plugin-sshdeploy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
