
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "logic_or/version"

Gem::Specification.new do |spec|
  spec.name          = "logic_or"
  spec.version       = LogicOr::VERSION
  spec.authors       = ["Mauro Berlanda"]
  spec.email         = ["mauro.berlanda@gmail.com"]

  spec.summary       = %q{Provide Logical Defined-Or operator}
  spec.description   = %q{Provide Logical Defined-Or operator}
  spec.homepage      = "https://github.com/mberlanda/logic_or"
  spec.license       = "MIT"
  spec.files = Dir["{lib,ext}/**/*.{rb,h,c}"] + ['LICENSE.txt', 'README.md', 'CHANGELOG.md']
  spec.extensions    = %w[ext/logic_or/extconf.rb]

  spec.require_paths = ["lib", "ext"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
