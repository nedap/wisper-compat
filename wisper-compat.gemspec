# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/version'

Gem::Specification.new do |gem|
  gem.name          = "wisper-compat"
  gem.version       = Wisper::VERSION
  gem.authors       = ["Kris Leech", "Dima Sukhikh", "Jamie Schembri"]
  gem.email         = ["kris.leech@gmail.com", "dima.sukhikh@nedap.com", "jamie.schembri@nedap.com"]
  gem.description   = <<-DESC
    A micro library providing objects with Publish-Subscribe capabilities.
    Both synchronous (in-process) and asynchronous (out-of-process) subscriptions are supported.
    Check out the Wiki for articles, guides and examples: https://github.com/krisleech/wisper/wiki
  DESC
  gem.summary       = "A micro library providing objects with Publish-Subscribe capabilities"
  gem.homepage      = "https://github.com/nedap/wisper-compat"
  gem.license       = "MIT"

  gem.required_ruby_version = '>= 2.7'

  gem.files         = `git ls-files`.split($/).reject { |f| f.split('/').first == 'bin' }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.metadata = {
    "rubygems_mfa_required" => "true"
  }
end
