# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kontena/plugin/app-command/version'

Gem::Specification.new do |spec|
  spec.name          = "kontena-plugin-app-command"
  spec.version       = Kontena::Plugin::AppCommand::VERSION
  spec.authors       = ["Kontena, Inc"]
  spec.email         = ["info@kontena.io"]

  spec.summary       = %q{Kontena 'app' subcommand for Kontena CLI 1.4+}
  spec.description   = %q{Restores the "kontena app" subcommand back to Kontena CLI v1.4+}
  spec.homepage      = "https://github.com/kontena/kontena-plugin-app-command"

  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'kontena-cli', '>= 1.4.0'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
