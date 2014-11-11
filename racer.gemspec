require File.expand_path("../lib/racer/version", __FILE__)
require "date"

Gem::Specification.new do |s|
  s.name        = "racer"
  s.version     = Racer::VERSION
  s.date        = Date.today.to_s
  s.summary     = "A high performance Ruby web server"
  s.description = "Racer is a high performance Rack-compliant Ruby web server written in C"
  
  s.author      = "Charlie Somerville"
  s.email       = "charlie@charliesomerville.com"
  s.homepage    = "https://github.com/charliesome/racer"
  
  # clean object files from ext/ before selecting files
  `rake clean`
  s.files       = Dir["LICENSE",
                      "lib/**/*.rb",
                      "bin/racer",
                      "ext/**/*"]
  s.extensions  = "ext/racer/extconf.rb"
  
  s.bindir      = "bin"
  s.executables = ["racer"]
  
  s.required_ruby_version = ">= 1.9.2"
  s.add_dependency "rack", ["~> 1.2"]
end
