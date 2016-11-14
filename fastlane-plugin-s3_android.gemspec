# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/s3_android/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-s3_android'
  spec.version       = Fastlane::S3Android::VERSION
  spec.author        = %q{Jérôme Grondin}
  spec.email         = %q{jerome.grondin@chauffeur-prive.com}

  spec.summary       = %q{A simple plugin to upload APK to Amazon S3}
  # spec.homepage      = "https://github.com/<GITHUB_USERNAME>/fastlane-plugin-s3_android"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'your-dependency', '~> 1.0.0'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.105.3'
end
