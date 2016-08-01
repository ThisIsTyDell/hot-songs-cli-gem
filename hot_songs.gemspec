# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hot_songs/version'

Gem::Specification.new do |spec|
  spec.name          = "hot_songs"
  spec.version       = HotSongs::VERSION
  spec.authors       = ["ThisIsTyDell"]
  spec.email         = ["milleb94@gmail.com"]
  spec.executables   = ["hot-songs"]
  spec.summary       = "The Hottest Songs of This Week"
  spec.description   = "A simple gem that pulls the hottest songs from the Billboard Charts Hot 100"
  spec.homepage      = "https://github.com/ThisIsTyDell/hot-songs-cli-gem"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib", "lib/hot_songs"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"
end
