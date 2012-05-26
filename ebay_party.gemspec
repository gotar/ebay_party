# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ebay_party/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Chris Potts"]
  gem.email         = ["dev@icpu.co.uk"]
  gem.description   = ["Ebayapi and httparty fused"]
  gem.summary       = ["Ebay api and httparty fused"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "ebay_party"
  gem.require_paths = ["lib"]
  gem.version       = EbayParty::VERSION

  gem.add_development_dependency "rspec", "~> 2.6"
  gem.add_dependency "httparty"
end
