# frozen_string_literal: true

require_relative 'lib/brainfuck_transcompiler/version'

Gem::Specification.new do |spec|
  spec.name = 'brainfuck_transcompiler'
  spec.version = BrainfuckTranscompiler::VERSION
  spec.authors = ['skytomo']
  spec.email = ['tomo1kawa.fullerene@gmail.com']

  spec.summary = 'The brainfuck transcompiler'
  spec.description = 'The brainfuck transcompiler'
  spec.homepage = 'https://github.com/skytomo221/brainfuck-transcompiler'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/skytomo221/brainfuck-transcompiler'
  spec.metadata['changelog_uri'] = 'https://github.com/skytomo221/brainfuck-transcompiler'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.metadata['rubygems_mfa_required'] = 'true'

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
