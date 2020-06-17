lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'dry/monads/sorbet/version'

Gem::Specification.new do |spec|
  spec.name          = 'dry-monads-sorbet'
  spec.version       = Dry::Monads::Sorbet::VERSION
  spec.authors       = ['Luke Worth']
  spec.email         = ['luke.worth@bellroy.com']

  spec.summary       = 'Sorbet type hints for Dry::Monads'
  spec.homepage      = 'https://github.com/tricycle/dry-monads-sorbet'
  spec.license       = 'MIT'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^spec/}) && !f.match(%r{^spec/support/factories/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.post_install_message = <<~TEXT
    dry-monads-sorbet has been installed/updated.

    This gem ships with a bundled rbi file that must be copied into your project.
    You can use the included "dry_monads_sorbet:update_rbi" to do this.
  TEXT

  spec.add_dependency 'sorbet'
  spec.add_dependency 'sorbet-runtime'
  spec.add_dependency 'dry-monads'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake', '>= 13.0'
  spec.add_development_dependency 'rspec', '>= 3.0'
end
