# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whitecms_news/version'

Gem::Specification.new do |gem|
  gem.name          = "whitecms_news"
  gem.version       = WhitecmsNews::VERSION
  gem.authors       = ["Sergey Belotelkin"]
  gem.email         = ["serwhite@yandex.ru"]
  gem.description   = %q{NEWS for WhiteCMS}
  gem.summary       = %q{Create component lates news}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
