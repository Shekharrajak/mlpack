
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mlpack/version"

Gem::Specification.new do |spec|
  spec.name          = "mlpack"
  spec.version       = Mlpack::VERSION
  spec.authors       = ["shekharrajak"]
  spec.email         = ["shekharrajak@live.com"]

  spec.summary       = %q{Ruby binding for mlpack}
  spec.description   = %q{Ruby binding for mlpack}
  spec.homepage      = "https://github.com/mlpack/mlpack"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  #   spec.metadata["homepage_uri"] = spec.homepage
  #   spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #   spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['lib/**/*', 'bin/*', 'LICENSE', '*.md', 'ext/**/*', 'spec/**/*', 'CMakeLists.txt', 'Gemfile',
                  'cmake/FindRuby.cmake', 'mlpack.gemspec', '.rspec']
  spec.bindir = "exe"
  spec.require_paths = ["lib"]
  spec.extensions = ['ext/mlpack/extconf.rb']

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake-compiler"
end
