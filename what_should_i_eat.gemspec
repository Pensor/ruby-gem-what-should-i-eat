lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Pensor"]
  spec.email         = ["patrick.feldtmann@gmail.com"]

  spec.summary       = "If don't know what to cook try this"
  spec.description   = "Gets you a new recipe to cook everyday"
  spec.homepage      = "https://github.com/Pensor/ruby-gem-what-should-i-eat"
  spec.license       = "MIT"
  spec.bindir        = "exe"
  spec.executables   << "what_should_i_eat"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Pensor/ruby-gem-what-should-i-eat"
  spec.metadata["changelog_uri"] = "https://github.com/Pensor/ruby-gem-what-should-i-eat"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
end
