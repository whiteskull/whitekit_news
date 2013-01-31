# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whitekit_news/version'

Gem::Specification.new do |gem|
  gem.name          = "whitekit_news"
  gem.version       = WhitekitNews::VERSION
  gem.authors       = ["Sergey Belotelkin"]
  gem.email         = ["serwhite@yandex.ru"]
  gem.description   = %q{NEWS for WhiteKit}
  gem.summary       = %q{Create component news}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
